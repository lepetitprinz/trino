# Scala Subquery
SELECT regionkey, name
FROM tpch.tiny.nation
WHERE regionkey = 
	(SELECT regionkey FROM tpch.tiny.region WHERE name = 'AMERICA');

# EXISTS Subquery
SELECT name
FROM tpch.tiny.nation
WHERE regionkey IN (SELECT regionkey FROM tpch.tiny.region);

# Quantified Subquery
SELECT name
FROM tpch.tiny.nation
WHERE regionkey = ANY (SELECT regionkey FROM tpch.tiny.region);