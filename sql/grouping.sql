# GROUPING with ROLLUP
SELECT mktsegment,
	   round(sum(acctbal), 2) AS total_acctbal,
	   GROUPING(mktsegment) AS id
FROM tpch.tiny.customer
GROUP BY ROLLUP (mktsegment)
ORDER BY id, total_acctbal;

# GROUPING with CUBE
SELECT mktsegment,
	   round(sum(acctbal), 2) AS total_acctbal,
	   GROUPING(mktsegment) AS id
FROM tpch.tiny.customer
GROUP BY CUBE (mktsegment)
ORDER BY id, total_acctbal;