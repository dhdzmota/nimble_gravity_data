# Generate database and schema
psql -f sql/create_database.sql
psql -d ces -f sql/create_schema.sql

# Download the data into txt files
# (if data is already downloaded in the desire file you can comment the following line)
#python3 py/download_all.py

# Generate script to create tables
python3 py/generate_sql_for_tables.py

# Create all the tables in postgres
psql -d ces -f sql/create_tables.sql

# Use the querys to solve the challenge
psql -d ces -f sql/analysis_query.sql

# Test the tables are created:
psql -d ces -f sql/test_query.sql

# Create roles and grant access
psql -d ces -f sql/configure_postgrest_role.sql
psql -d ces -f sql/configure_postgrest_user.sql

# Launch postgrest
./postgrest postgrest-config.conf
