-- How was the evolution of women in government during time?
DROP TABLE IF EXISTS ces_schema.women_in_government;

CREATE TABLE ces_schema.women_in_government AS (
    SELECT
        CONCAT(TRIM(month), ' ', year) as date,
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
    ) AS women_in_goverment
    LEFT JOIN ces_schema.ce_period USING (period)
    ORDER BY year, period
);


-- How was the evolution of the ratio "production employees / supervisory employees" during time?
--DROP TABLE IF EXISTS ces_schema.temporal_production_employees;
CREATE TEMPORARY TABLE temporal_production_employees AS (
    SELECT
        CONCAT(TRIM(month), ' ', year) as date,
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
        CONCAT(TRIM(month), ' ', year) as date,
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

CREATE TABLE ces_schema.ratio_production_supervisory AS (
    SELECT
        date,
        -- We assume that the supervisory employees are the remaining employees of the operation:
        -- All the employees minus production employees.
        production_employees_thousands/(all_employees_thousands - production_employees_thousands) as ratio
    FROM temporal_all_employees
    LEFT JOIN temporal_production_employees USING (date)
    ORDER BY year, period
);

DROP TABLE temporal_all_employees;
DROP TABLE temporal_production_employees;
