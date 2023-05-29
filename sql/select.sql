SELECT count(name) FROM tpch.sf1.nation;

SELECT name FROM tpch.sf1.region;

SELECT name
FROM tpch.sf1.region
WHERE name like 'A%'
ORDER BY name DESC;

SELECT nation.name AS nation, region.name AS region
FROM tpch.sf1.region, tpch.sf1.nation
WHERE region.regionkey = nation.regionkey
AND region.name LIKE 'AFRICA';

SELECT nation.name || '/' || region.name AS Location
FROM tpch.sf1.region JOIN tpch.sf1.nation
ON region.regionkey = nation.regionkey
AND region.name LIKE 'AFRICA';

SELECT cast(round(avg(totalprice)) AS integer) AS average_price
FROM tpch.sf1.orders;