INSERT INTO `refocus_metadata`.princeton_eviction (
	date, county, state, filings_2020, filings_avg, week
)
SELECT
	date, county, state, filings, filings_avg, week
FROM
	`refocus`.weekly_evictions
;
