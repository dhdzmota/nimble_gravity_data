
DROP TABLE IF EXISTS ces_schema.ce_datatype;
CREATE TABLE ces_schema.ce_datatype(
    data_type_code FLOAT8,
	data_type_text TEXT
);
\COPY ces_schema.ce_datatype FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_datatype.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_00a_totalnonfarm_employment;
CREATE TABLE ces_schema.ce_data_00a_totalnonfarm_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_00a_totalnonfarm_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_00a_TotalNonfarm_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_01a_currentseasae;
CREATE TABLE ces_schema.ce_data_01a_currentseasae(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_01a_currentseasae FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_01a_CurrentSeasAE.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_02b_allrealearningsae;
CREATE TABLE ces_schema.ce_data_02b_allrealearningsae(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_02b_allrealearningsae FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_02b_AllRealEarningsAE.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_03c_allrealearningspe;
CREATE TABLE ces_schema.ce_data_03c_allrealearningspe(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_03c_allrealearningspe FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_03c_AllRealEarningsPE.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_05a_totalprivate_employment;
CREATE TABLE ces_schema.ce_data_05a_totalprivate_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_05a_totalprivate_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_05a_TotalPrivate_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_05b_totalprivate_allemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_05b_totalprivate_allemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_05b_totalprivate_allemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_05b_TotalPrivate_AllEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_05c_totalprivate_productionemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_05c_totalprivate_productionemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_05c_totalprivate_productionemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_05c_TotalPrivate_ProductionEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_0_allcesseries;
CREATE TABLE ces_schema.ce_data_0_allcesseries(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_0_allcesseries FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_0_AllCESSeries.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_10a_miningandlogging_employment;
CREATE TABLE ces_schema.ce_data_10a_miningandlogging_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_10a_miningandlogging_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_10a_MiningAndLogging_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_10b_miningandlogging_allemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_10b_miningandlogging_allemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_10b_miningandlogging_allemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_10b_MiningAndLogging_AllEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_10c_miningandlogging_productionemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_10c_miningandlogging_productionemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_10c_miningandlogging_productionemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_10c_MiningAndLogging_ProductionEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_20a_construction_employment;
CREATE TABLE ces_schema.ce_data_20a_construction_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_20a_construction_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_20a_Construction_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_20b_construction_allemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_20b_construction_allemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_20b_construction_allemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_20b_Construction_AllEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_20c_construction_productionemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_20c_construction_productionemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_20c_construction_productionemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_20c_Construction_ProductionEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_30a_manufacturing_employment;
CREATE TABLE ces_schema.ce_data_30a_manufacturing_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_30a_manufacturing_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_30a_Manufacturing_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_30b_manufacturing_allemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_30b_manufacturing_allemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_30b_manufacturing_allemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_30b_Manufacturing_AllEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_30c_manufacturing_productionemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_30c_manufacturing_productionemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_30c_manufacturing_productionemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_30c_Manufacturing_ProductionEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_31a_manufacturingdurablegoods_employment;
CREATE TABLE ces_schema.ce_data_31a_manufacturingdurablegoods_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_31a_manufacturingdurablegoods_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_31a_ManufacturingDurableGoods_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_31b_manufacturingdurablegoods_allemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_31b_manufacturingdurablegoods_allemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_31b_manufacturingdurablegoods_allemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_31b_ManufacturingDurableGoods_AllEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_31c_manufacturingdurablegoods_productionemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_31c_manufacturingdurablegoods_productionemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_31c_manufacturingdurablegoods_productionemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_31c_ManufacturingDurableGoods_ProductionEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_32a_manufacturingnondurablegoods_employment;
CREATE TABLE ces_schema.ce_data_32a_manufacturingnondurablegoods_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_32a_manufacturingnondurablegoods_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_32a_ManufacturingNondurableGoods_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_32b_manufacturingnondurablegoods_allemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_32b_manufacturingnondurablegoods_allemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_32b_manufacturingnondurablegoods_allemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_32b_ManufacturingNondurableGoods_AllEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_32c_manufacturingnondurablegoods_productionemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_32c_manufacturingnondurablegoods_productionemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_32c_manufacturingnondurablegoods_productionemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_32c_ManufacturingNondurableGoods_ProductionEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_40a_tradetransportationandutilities_employment;
CREATE TABLE ces_schema.ce_data_40a_tradetransportationandutilities_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_40a_tradetransportationandutilities_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_40a_TradeTransportationAndUtilities_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_40b_tradetransportationandutilities_allemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_40b_tradetransportationandutilities_allemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_40b_tradetransportationandutilities_allemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_40b_TradeTransportationAndUtilities_AllEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_40c_tradetransportationandutilities_productionemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_40c_tradetransportationandutilities_productionemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_40c_tradetransportationandutilities_productionemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_40c_TradeTransportationAndUtilities_ProductionEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_41a_wholesaletrade_employment;
CREATE TABLE ces_schema.ce_data_41a_wholesaletrade_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_41a_wholesaletrade_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_41a_WholesaleTrade_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_41b_wholesaletrade_allemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_41b_wholesaletrade_allemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_41b_wholesaletrade_allemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_41b_WholesaleTrade_AllEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_41c_wholesaletrade_productionemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_41c_wholesaletrade_productionemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_41c_wholesaletrade_productionemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_41c_WholesaleTrade_ProductionEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_42a_retailtrade_employment;
CREATE TABLE ces_schema.ce_data_42a_retailtrade_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_42a_retailtrade_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_42a_RetailTrade_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_42b_retailtrade_allemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_42b_retailtrade_allemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_42b_retailtrade_allemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_42b_RetailTrade_AllEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_42c_retailtrade_productionemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_42c_retailtrade_productionemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_42c_retailtrade_productionemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_42c_RetailTrade_ProductionEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_43a_transportationandwarehousingandutilities_employment;
CREATE TABLE ces_schema.ce_data_43a_transportationandwarehousingandutilities_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_43a_transportationandwarehousingandutilities_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_43a_TransportationAndWarehousingAndUtilities_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_43b_transportationandwarehousingandutilities_allemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_43b_transportationandwarehousingandutilities_allemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_43b_transportationandwarehousingandutilities_allemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_43b_TransportationAndWarehousingAndUtilities_AllEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_43c_transportationandwarehousingandutilities_productionemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_43c_transportationandwarehousingandutilities_productionemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_43c_transportationandwarehousingandutilities_productionemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_43c_TransportationAndWarehousingAndUtilities_ProductionEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_50a_information_employment;
CREATE TABLE ces_schema.ce_data_50a_information_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_50a_information_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_50a_Information_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_50b_information_allemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_50b_information_allemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_50b_information_allemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_50b_Information_AllEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_50c_information_productionemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_50c_information_productionemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_50c_information_productionemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_50c_Information_ProductionEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_55a_financialactivities_employment;
CREATE TABLE ces_schema.ce_data_55a_financialactivities_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_55a_financialactivities_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_55a_FinancialActivities_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_55b_financialactivities_allemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_55b_financialactivities_allemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_55b_financialactivities_allemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_55b_FinancialActivities_AllEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_55c_financialactivities_productionemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_55c_financialactivities_productionemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_55c_financialactivities_productionemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_55c_FinancialActivities_ProductionEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_60a_professionalbusinessservices_employment;
CREATE TABLE ces_schema.ce_data_60a_professionalbusinessservices_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_60a_professionalbusinessservices_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_60a_ProfessionalBusinessServices_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_60b_professionalbusinessservices_allemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_60b_professionalbusinessservices_allemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_60b_professionalbusinessservices_allemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_60b_ProfessionalBusinessServices_AllEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_60c_professionalbusinessservices_productionemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_60c_professionalbusinessservices_productionemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_60c_professionalbusinessservices_productionemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_60c_ProfessionalBusinessServices_ProductionEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_65a_educationandhealthcare_employment;
CREATE TABLE ces_schema.ce_data_65a_educationandhealthcare_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_65a_educationandhealthcare_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_65a_EducationAndHealthCare_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_65b_educationandhealthcare_allemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_65b_educationandhealthcare_allemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_65b_educationandhealthcare_allemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_65b_EducationAndHealthCare_AllEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_65c_educationandhealthcare_productionemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_65c_educationandhealthcare_productionemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_65c_educationandhealthcare_productionemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_65c_EducationAndHealthCare_ProductionEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_70a_leisureandhospitality_employment;
CREATE TABLE ces_schema.ce_data_70a_leisureandhospitality_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_70a_leisureandhospitality_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_70a_LeisureAndHospitality_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_70b_leisureandhospitality_allemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_70b_leisureandhospitality_allemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_70b_leisureandhospitality_allemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_70b_LeisureAndHospitality_AllEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_70c_leisureandhospitality_productionemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_70c_leisureandhospitality_productionemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_70c_leisureandhospitality_productionemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_70c_LeisureAndHospitality_ProductionEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_80a_otherservices_employment;
CREATE TABLE ces_schema.ce_data_80a_otherservices_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_80a_otherservices_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_80a_OtherServices_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_80b_otherservices_allemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_80b_otherservices_allemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_80b_otherservices_allemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_80b_OtherServices_AllEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_80c_otherservices_productionemployeehoursandearnings;
CREATE TABLE ces_schema.ce_data_80c_otherservices_productionemployeehoursandearnings(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value TEXT,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_80c_otherservices_productionemployeehoursandearnings FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_80c_OtherServices_ProductionEmployeeHoursAndEarnings.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_90a_government_employment;
CREATE TABLE ces_schema.ce_data_90a_government_employment(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_90a_government_employment FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_90a_Government_Employment.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_data_goog;
CREATE TABLE ces_schema.ce_data_goog(
    series_id TEXT,
	year FLOAT8,
	period TEXT,
	value FLOAT8,
	footnote_codes TEXT
);
\COPY ces_schema.ce_data_goog FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_data_Goog.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_footnote;
CREATE TABLE ces_schema.ce_footnote(
    footnote_code TEXT,
	footnote_text TEXT
);
\COPY ces_schema.ce_footnote FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_footnote.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_industry;
CREATE TABLE ces_schema.ce_industry(
    industry_code FLOAT8,
	naics_code TEXT,
	publishing_status TEXT,
	industry_name TEXT,
	display_level FLOAT8,
	selectable TEXT,
	sort_sequence FLOAT8
);
\COPY ces_schema.ce_industry FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_industry.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_period;
CREATE TABLE ces_schema.ce_period(
    period TEXT,
	mm TEXT,
	month TEXT
);
\COPY ces_schema.ce_period FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_period.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_seasonal;
CREATE TABLE ces_schema.ce_seasonal(
    seasonal_code TEXT,
	seasonal_text TEXT
);
\COPY ces_schema.ce_seasonal FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_seasonal.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_series;
CREATE TABLE ces_schema.ce_series(
    series_id TEXT,
	supersector_code FLOAT8,
	industry_code FLOAT8,
	data_type_code FLOAT8,
	seasonal TEXT,
	series_title TEXT,
	footnote_codes TEXT,
	begin_year FLOAT8,
	begin_period TEXT,
	end_year FLOAT8,
	end_period TEXT
);
\COPY ces_schema.ce_series FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_series.txt DELIMITER E'\t' CSV HEADER;
    


DROP TABLE IF EXISTS ces_schema.ce_supersector;
CREATE TABLE ces_schema.ce_supersector(
    supersector_code FLOAT8,
	supersector_name TEXT
);
\COPY ces_schema.ce_supersector FROM /mnt/c/Users/dhdzm/Documents/projects/nimble_gravity_data/py/../data/raw/ce_supersector.txt DELIMITER E'\t' CSV HEADER;
    