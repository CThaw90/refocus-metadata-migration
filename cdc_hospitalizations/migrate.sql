INSERT INTO `refocus_metadata`.cdc_hospitalizations (
	num, catchment, network, year, mmwr_year, mmwr_week, age_category,
	sex, race, cumulative_rate, weekly_rate, mmwr_date
)
SELECT
	id + 1 as num, catchment, network, mmwr_year as year, CONCAT_WS('-', mmwr_year, mmwr_year + 1) as mmwr_year,
	mmwr_week, age_category, sex_category, race_category, cumulative_rate, weekly_rate, mmwr_date
FROM
	`refocus`.cdc_hospitalizations
;
