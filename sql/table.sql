
# Create a table
CREATE TABLE hive.web.page_views(
	view_time timestamp,
	user_id BIGINT,
	page_url VARCHAR,
	view_date DATE,
	country VARCHAR
)
WITH (
	format = 'ORC'
	external_location = 's3://example-org/web/page_views/'
);

# Copy an existing table
CREATE TABLE hive.web.page_view_bucketed (
	comment varchar,
	view_time timestamp,
	user_id bigint,
	page_url varchar,
	view_date date,
	country varchar
)
WITH (
	bucket_count = 50,
	bucketed_by = ARRAY['user_id']
	format = 'ORC'
	partitioned_by = ARRAY['view_date', 'country'],
);

## Creat a new table from query results
CREATE TABLE hive.web.page_views_orc_part
WITH (
		format = 'ORC',
		partitioned_by = ARRAY['view_date', 'country']
)
AS
SELECT *
FROM hive.web.page_view_text;

# Modify a table
ALTER TABLE page_views RENAME TO page_views_new;

ALTER TABLE page_views ADD COLUMN comment varchar;

ALTER TABLE page_views DROP COLUMN comment;

ALTER TABLE page_views RENAME COLUMN comment TO comments;

# Delete a table
DROP TABLE page_views;
