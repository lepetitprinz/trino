WITH
total AS (
	SELECT mktsegment,
		   round(sum(acctbal)) AS total_per_mktsegment
	FROM tpch.tiny.customer
	GROUP BY 1
),
average AS (
	SELECT round(avg(total_per_mktsegment)) AS average
	FROM total
)
SELECT mktsegment,
	   total_per_mktsegment,
	   average
FROM total, average
WHERE total_per_mktsegment > average;