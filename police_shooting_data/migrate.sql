INSERT INTO `refocus_metadata`.police_shooting_data (
	name, date, manner_of_death, armed, age, gender, race, city, state,
	signs_of_mental_illness, threat_level, flee, body_camera, longitude,
	latitude, is_geocoding_exact, county
)
SELECT
	name, date, manner_of_death, armed, age, gender, race, city, state,
	signs_of_mental_illness, threat_level, flee, body_camera, longitude,
	latitude, is_geocoding_exact, county
FROM
	`refocus`.police_shooting_data
;
