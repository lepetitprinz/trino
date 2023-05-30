SELECT count(name) FROM tpch.sf1.nation;

SELECT name FROM tpch.sf1.region;

# WHERE Clause
SELECT custkey, acctbal
FROM tpch.sf1.customer 
WHERE acctbal < 0;

SELECT custkey, acctbal
FROM tpch.sf1.customer 
WHERE acctbal > 0 AND acctbal < 500;

# GROUP BY AND HAVING Clause
SELECT mktsegment
FROM tpch.sf1.customer
GROUP BY mktsegment;

# GROUP BY with aggregation function
SELECT mktsegment, 
	   round(sum(acctbal) / 1000000, 3) AS acctbal_millions
FROM tpch.sf1.customer
GROUP BY mktsegment;

# GROUP BY with HAVING
SELECT mktsegment,
	   round(sum(acctbal), 1) AS acctbal_per_mktsegment
FROM tpch.tiny.customer
GROUP BY mktsegment
HAVING round(sum(acctbal), 1) > 5283.0;

# ORDER BY and LIMIT Clause
SELECT mktsegment,round(sum(acctbal), 2) AS acctbal_per_mktsegment
FROM tpch.sf1.customer
GROUP BY mktsegment
HAVING sum(acctbal) > 0
ORDER BY acctbal_per_mktsegment DESC
LIMIT 1;

# UNION
SELECT * FROM (VALUE 1, 2)
UNION 
SELECT * FROM (VALUE 2, 3);

# UNION ALL
SELECT * FROM (VALUE 1, 2)
UNION ALL
SELECT * FROM (VALUE 2, 3);

# INTERSECT
SELECT * FROM (VALUES 1, 2)
INTERSECT
SELECT * FROM (VALUES 2, 3);

# EXCEPT
SELECT * FROM (VALUES 1, 2)
EXCEPT
SELECT * FROM (VALUES 2, 3);


