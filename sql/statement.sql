# List the available catalogs
SHOW CATALOGS;

# List the schemas in a catalog
SHOW SCHEMAS FROM tpch;

# List the tables in a schema
SHOW TABLES FROM tpch.tiny;

# Display a list of all available SQL functions
SHOW FUNCTIONS;

# List the columns in a tabnle along with their data type and other attributes
SHOW COLUMNS FROM tpch.tiny.customer;
DESCRIBE tpch.tiny.customer;

# Update the session to use the specified catalog and schema as the default
# If a catalog is not specified, the schema is resolved using the current catalog
USE tpch.tiny;

# Show statistics like data size and counts for the data in a specific table
SHOW STATS FOR tpch.tiny.customer;

# Generate the query plan and detail the individual steps
EXPLAIN
SELECT * FROM tpch.tiny.customer;