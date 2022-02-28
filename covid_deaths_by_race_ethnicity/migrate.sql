INSERT INTO `refocus_metadata`.covid_deaths_by_race_ethnicity (
	Date, Location, White_percent_of_Deaths, White_percent_of_Total_Population,
	Black_percent_of_Deaths, Black_percent_of_Total_Population,
	Hispanic_percent_of_Deaths, Hispanic_percent_of_Total_Population,
	Asian_percent_of_Deaths, Asian_percent_of_Total_Population,
	American_Indian_or_Alaska_Native_percent_of_Deaths,
	American_Indian_or_Alaska_Native_percent_of_Total_Population,
	Native_Hawaiian_or_Other_Pacific_Islander_percent_of_Deaths,
	Native_Hawaiian_or_Other_Pacific_Isle_percent_of_Total_Pop,
	Other_percent_of_Deaths, Other_percent_of_Total_Population,
	percent_of_Deaths_with_Known_Race, percent_of_Deaths_with_Unknown_Race,
	percent_of_Deaths_With_Known_Ethnicity, percent_of_Deaths_with_Unknown_Ethnicity
)
SELECT
	date, state, white_percentage_of_deaths, white_percentage_of_population,
	black_percentage_of_deaths, black_percentage_of_population,
	hispanic_percentage_of_deaths, hispanic_percentage_of_population,
	asian_percentage_of_deaths, asian_percentage_of_population,
	american_indian_percentage_of_deaths, american_indian_percentage_of_population,
	native_hawaiian_percentage_of_deaths, native_hawaiian_percentage_of_population,
	other_percentage_of_deaths, other_percentage_of_population,
	known_race_percentage_of_deaths, unknown_race_percentage_of_deaths,
	known_ethnicity_percentage_of_deaths, unknown_ethnicity_percentage_of_deaths
FROM
	`refocus`.deaths_by_race_ethnicity
;