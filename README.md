# Challenge Nimble Gravity

 Given the information provided in the following
 [link](https://writer.zohopublic.com/writer/published/hpp809176f475e2a74a04a6822920b6e3da32), 
 an approach was generated to obtain the relevant information through the use of postgresql and python. 

The main file of this repo is found in `setup.sh` which should execute step-by-step commands that, 
as a quick overview, create the database and schemas, download the information and upload it into the database, 
process the data to generate an analysis and configures the roles to get a postgrest API response.

Project Organization
------------

    ├── README.md          <- The top-level README file.
    ├── data
    │   └── raw            <- The original, immutable data dump.
    │
    ├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
    │                         generated with `pip freeze > requirements.txt`
    │
    ├── py                 <- Python code for use in this project.
    │   ├── download_all.py    <- File to download all the data.
    │   └── generate_sql_for_tables.py  <- Creates the `create_database.sql` script with the raw data info.
    │
    ├── sql                 <- Python code for use in this project
    │   ├── analysis_query.sql    <- File that contains query for the challenge resolution.
    │   ├── configure_postgrest_role.sql    <- File to create and grant permissions to role.
    │   ├── configure_postgrest_user.sql    <- File to create and grant permissions to user.
    │   ├── create_database.sql    <- File to create the desired database.
    │   ├── create_schema.sql    <- File to create the desired schema.
    │   ├── create_tables.sql    <- File that contains logic to create tables 
    │   │                           (this is created/modified by `generate_sql_for_tables.py` script).
    │   └── test_query.sql  <- File that contains query to see if tables were created.
    │                           
    ├── data_types.json     <- JSON dictionary that maps pandas objects name (dtypes of a dataframe) to sql data types.
    ├── postgrest-config.conf     <- Config file needed for the execution of postgrest.
    └── setup.sh            <- Main file that contains all the commands to solve the challenge. 


After the `setup.sh` file is executed, you should be able to open the following links (in localhost):

- Women in Goverment:
  - http://localhost:3000/women_in_government
  - http://localhost:3000/women_in_government_evolution

- Ratio of production employees vs supervisory employees
  - http://localhost:3000/ratio_production_supervisory
  - http://localhost:3000/ratio_production_supervisory_evolution

Important:
-------------
There are some requirements and dependencies for this project to effectively run. 
For this specific instance, we assume that there is a 
binary file of postgrest in this project. 
To do this, please click the following [link](https://github.com/PostgREST/postgrest/releases/tag/v11.2.0)
where you will find the corresponding binary file.

In this case, since we are using Ubuntu, we need the
`postgrest-v11.2.0-linux-static-x64.tar.xz`: According to the 
[installation guide](https://postgrest.org/en/stable/explanations/install.html) the Linux binary is a static 
executable that can be run on any Linux distribution.

After download, execute the following command: `tar Jxf postgrest-v11.2.0-linux-static-x64.tar.xz`
and then you should be able to run `./postgrest`. 
This binary should be in this repo, therefore one way to go is just to copy `cp` or move `mv` the file into this folder.  

Also, we assume that postgresql is installed. If it is not, please run the following commands for installation: 
`sudo apt upgrade -y` `sudo apt update -y` `sudo apt install postgresql postgresql-contrib`. 

After this is done, we should start the postgresql service, this can be done by executing `sudo service postgresql start`.

Be sure to have the python requirements: `pip install -r requirements.txt`

Once this is done, execute the following command to run the main script: `sudo -u postgres bash setup.sh`
