# runtime table
# List nodes in Trino cluster
SELECT * FROM system.runtime.nodes;

# Show all failed queries
SELECT * FROM system.runtime.queries WHERE state='FAILED';

# Show all running queries, including their query_id
SELECT * FROM system.runtime.queries WHERE state='RUNNING';

# The system tables also provide a mechanism to kill a running query
CALL system.runtime.kill_query(query_id => 'queryId', message => 'Killed');

# information_schema table
SHOW TABLES IN system.information_schema;

# query the list of tables in the schema
SELECT * FROM tpch.information_schema.tables;