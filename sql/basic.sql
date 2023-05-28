SHOW CATALOG;

SHOW SCHEMAS FROM tpch;

SHOW TABLES FROM tpch.sf1;

SELECT count(name) FROM tpch.sf1.nation;

USE tpch.sf1;

DESCRIBE tpch.sf1.region;

SELECT name FROM tpch.sf1.region;

SELEC name
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