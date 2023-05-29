# Create a schema
CREATE SCHEMA dev;

# Rename a schema
ALTER SCHEMA dev RENAME TO prod;

# Delete a schema
DROP SCHEMA prod;

# List of schema properties
SELECT * FROM system.metadata.schema_properties;

# WITH cluase
CREATE SCHEMA hive.web
WITH (location = 's3://example-org/web/')