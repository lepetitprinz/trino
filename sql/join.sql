# JOIN Statement
SELECT custkey, mktsegment, nation.name AS nation
FROM tpch.tiny.nation 
JOIN tpch.tiny.customer
ON nation.nationkey = customer.nationkey;

# cross join
SELECT custkey, mktsegment, nation.name AS nation
FROM tpch.tiny.nation, tpch.tiny.customer
WHERE nation.nationkey = customer.nationkey;

# Complex join query
SELECT
	nation,
	o_year,
	sum(amount) AS sum_profit
FROM (
			SELECT
				N.name AS nation
				extract(YEAR FROM o.orderdate) AS o_year,
				l.extendedprice * (1 - l.discount) - ps.supplycost * l.quantity AS amount
			FROM
				part AS p,
				supplier AS s,
				lineitem AS l,
				partsupp As ps,
				orders AS o,
				nation AS n
			WHERE
				s.suppkey = l.suppkey
				AND ps.suppkey = l.suppkey
				AND ps.partkey = l.partkey
				AND p.partkey = l.partkey
				AND o.orderkey = l.orderkey
				AND s.nationkey = n.nationkey
				AND p.name LIKE '%green%'
		) AS profit
GROUP BY
	nation,
	o_year
ORDER BY
	nation,
	o_year DESC;