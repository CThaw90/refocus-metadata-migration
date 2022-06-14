INSERT INTO `refocus_metadata`.apha_map (
	date, city, county, state, entity_type,
	entity_geo, entity_name, link_to_declaration,
	latitude, longitude, declaration
)
SELECT
	date, city, county, state, entity_type,
	entity_geo, entity_name, link_to_declaration,
	latitude, longitude, declaration
FROM
	`refocus`.apha_map
;
