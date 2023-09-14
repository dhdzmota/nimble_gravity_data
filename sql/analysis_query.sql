-- How was the amount of women in government during time?

DROP TABLE IF EXISTS ces_schema.women_in_government;
CREATE TABLE ces_schema.women_in_government AS (
    SELECT
        CONCAT(TRIM(month), ' ', year) as relevant_date,
        value_in_thousands
    FROM (
        SELECT
            period,
            year,
            sum(value) as value_in_thousands
        FROM ces_schema.ce_data_0_allcesseries
        WHERE series_id IN (
            SELECT series_id
            FROM ces_schema.ce_series
            LEFT JOIN ces_schema.ce_supersector USING(supersector_code)
            LEFT JOIN ces_schema.ce_datatype USING(data_type_code)
            WHERE
                -- We are selecting the government super sector
                supersector_name='Government'
                -- Now we are getting the WOMEN EMPLOYEES, THOUSANDS
                AND data_type_code=10
        )
        AND period!='M13'
        GROUP BY year, period
    ) AS wig
    LEFT JOIN ces_schema.ce_period USING (period)
    ORDER BY year, period
);
--------------------------------------------------------------------------------------------------
-- How was the EVOLUTION of women in government during time?

CREATE TEMPORARY TABLE temporal_wig AS (
        SELECT
            period,
            year,
            TO_DATE(CONCAT(year, '/', SUBSTRING(period, 2), '/01'), 'YYYY/MM/DD') as date_test,
            sum(value) as value_in_thousands
        FROM ces_schema.ce_data_0_allcesseries
        WHERE series_id IN (
            SELECT series_id
            FROM ces_schema.ce_series
            LEFT JOIN ces_schema.ce_supersector USING(supersector_code)
            LEFT JOIN ces_schema.ce_datatype USING(data_type_code)
            WHERE
                -- We are selecting the government super sector
                supersector_name='Government'
                -- Now we are getting the WOMEN EMPLOYEES, THOUSANDS
                AND data_type_code=10
        )
        AND period!='M13'
        GROUP BY year, period
);

DROP TABLE IF EXISTS ces_schema.women_in_government_evolution;
CREATE TABLE ces_schema.women_in_government_evolution AS (
    SELECT
        CONCAT(TRIM(month), ' ', year) as relevant_date,
        value_in_thousands-previous_value_in_thousands as change_between_prev_and_curr_value_in_thousands
    FROM temporal_wig
        LEFT JOIN ces_schema.ce_period USING (period)
        LEFT JOIN (
            SELECT
                date_test + INTERVAL '1 month' AS date_test,
                value_in_thousands AS previous_value_in_thousands
                FROM temporal_wig
        ) AS twig USING(date_test)
    ORDER BY date_test
);

DROP TABLE temporal_wig;
--------------------------------------------------------------------------------------------------
-- How was the ratio "production employees / supervisory employees" during time?

CREATE TEMPORARY TABLE temporal_production_employees AS (
    SELECT
        CONCAT(TRIM(month), ' ', year) as relevant_date,
        value_in_thousands as production_employees_thousands
    FROM (
        SELECT
            period,
            year,
            sum(value) as value_in_thousands
        FROM ces_schema.ce_data_0_allcesseries
        WHERE series_id in (
            SELECT series_id
            FROM ces_schema.ce_series
            LEFT JOIN ces_schema.ce_datatype USING(data_type_code)
            --- Here we are getting the PRODUCTION AND NONSUPERVISORY EMPLOYEES, THOUSANDS
            WHERE data_type_code=6
        )
        AND period != 'M13'
        GROUP BY year, period
    ) AS production_employees
    LEFT JOIN ces_schema.ce_period USING (period)
);

CREATE TEMPORARY TABLE temporal_all_employees AS (
    SELECT
        TO_DATE(CONCAT(year, '/', SUBSTRING(period, 2), '/01'), 'YYYY/MM/DD') as date_test,
        CONCAT(TRIM(month), ' ', year) as relevant_date,
        value_in_thousands as all_employees_thousands,
        year,
        period

    FROM (
        SELECT
            period,
            year,
            sum(value) as value_in_thousands
        FROM ces_schema.ce_data_0_allcesseries
        WHERE series_id in (
            SELECT series_id
            FROM ces_schema.ce_series
            LEFT JOIN ces_schema.ce_datatype USING(data_type_code)
            --- Here we are getting the ALL EMPLOYEES, THOUSANDS
            WHERE data_type_code=1
        )
        AND period != 'M13'
        GROUP BY year, period
    ) AS production_employees
    LEFT JOIN ces_schema.ce_period USING (period)
);

DROP TABLE IF EXISTS ces_schema.ratio_production_supervisory;
CREATE TABLE ces_schema.ratio_production_supervisory AS (
    SELECT
        relevant_date,
        -- We assume that the supervisory employees are the remaining employees of the operation:
        -- All the employees minus production employees.
        production_employees_thousands/(all_employees_thousands - production_employees_thousands) as ratio
    FROM temporal_all_employees
    LEFT JOIN temporal_production_employees USING (relevant_date)
    ORDER BY year, period
);

--------------------------------------------------------------------------------------------------
-- How was the EVOLUTION of the ratio "production employees / supervisory employees" during time?

CREATE TEMPORARY TABLE rps AS (
    SELECT
        date_test,
        relevant_date,
        -- We assume that the supervisory employees are the remaining employees of the operation:
        -- All the employees minus production employees.
        production_employees_thousands/(all_employees_thousands - production_employees_thousands) as ratio
    FROM temporal_all_employees
    LEFT JOIN temporal_production_employees USING (relevant_date)
    ORDER BY date_test
);

DROP TABLE IF EXISTS ces_schema.ratio_production_supervisory_evolution;
CREATE TABLE ces_schema.ratio_production_supervisory_evolution AS (
    SELECT
        relevant_date,
        ratio-previous_ratio as change_between_prev_and_curr_ratio
    FROM rps
    LEFT JOIN (
        SELECT
            date_test + interval '1 month' as date_test,
            ratio as previous_ratio
        FROM rps
    ) AS temporal_rps USING (date_test)
);


DROP TABLE temporal_all_employees;
DROP TABLE temporal_production_employees;
DROP TABLE rps;