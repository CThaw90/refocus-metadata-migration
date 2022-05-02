INSERT INTO `refocus_metadata`.state_trend_data (
	state, date, cases, deaths, tests, casechange, deathchange, test_change, case_means, death_mean,
	test_means, case_permill, death_permill, test_permill, pos_rate, rp2, pct_change_weekly_cases_7,
	pct_change_weekly_cases_14, pct_change_weekly_deaths_7, pct_change_weekly_deaths_14,
	pct_change_weekly_tests_7, pct_change_weekly_tests_14, pct_change_positivity_rate_7,
	pct_change_positivity_rate_14, pop, distributed, administered, one_dose, two_dose, hotspot
)
SELECT
	state, date, cases, deaths, tests, cases_change, deaths_change, tests_change, cases_7_day_mean,
	deaths_7_day_mean, tests_7_day_mean, cases_per_million, deaths_per_million, tests_per_million,
	positivity_rate_7_day_mean, positivity_rate_14_day_mean, 
	pct_change_weekly_cases_7, pct_change_weekly_cases_14,
	pct_change_weekly_deaths_7, pct_change_weekly_deaths_14,
	pct_change_weekly_tests_7, pct_change_weekly_tests_14,
	pct_change_positivity_rate_7, pct_change_positivity_rate_14, population,
	vaccines_distributed, vaccines_administered, vaccines_one_dose, vaccines_two_dose, hotspot
FROM
	`refocus`.state_trend_data
;
