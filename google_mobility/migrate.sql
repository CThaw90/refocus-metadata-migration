INSERT INTO `refocus_metadata`.google_mobility (
	v1, country_region_code, country_region, sub_region_1, sub_region_2, date,
	retail_and_recreation_change, grocery_and_pharmacy_change, parks_change, transit_stations_change,
	workplaces_change, residential_change
)
SELECT
	(id + 1) as v1, 'US' as country_region_code, 'United States' as country_region, county as sub_region_1,
	state as sub_region_2, date, retail_and_recreation_change, grocery_and_pharmacy_change, parks_change,
	transit_stations_change, workplaces_change, residential_change
FROM
	`refocus`.google_mobility
;
