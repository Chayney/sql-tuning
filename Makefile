DB_NAME=index_lab

.PHONY: run setup clean

setup:
	createdb $(DB_NAME) 2>/dev/null || true

run: setup
	psql $(DB_NAME) -f sql/01_create_table.sql
	psql $(DB_NAME) -f sql/02_seed.sql
	psql $(DB_NAME) -f sql/03_without_index.sql
	psql $(DB_NAME) -f sql/04_create_index.sql
	psql $(DB_NAME) -f sql/05_with_index.sql

clean:
	dropdb $(DB_NAME) --if-exists