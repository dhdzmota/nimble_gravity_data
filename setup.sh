# Generate database and schema
psql -f sql/create_database.sql
psql -d example -f sql/create_schema.sql

# Install the requirements for python
pip install -r requirements.txt

# Download the data into txt files

python py/download_all.py

# Generate script to create tables
python py/generate_sql_for_tables.py

# Create all the tables in postgres
psql -d example -f sql/create_tables.sql

# Use the querys to solve the challenge
psql -d example -f sql/analysis_query.sql

# Test the tables are created:
psql -d example -f sql/test_query.sql

# Create roles and grant access
psql -d example -f sql/configure_postgrest_role.sql
psql -d example -f sql/configure_postgrest_user.sql

# Launch postgrest
./postgrest postgrest-config.conf






