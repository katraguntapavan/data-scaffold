
### **Description**

This git repository hosts database automation and migration scripts. **IMPORTANT**: All database changes must be done via `db-migrate` from this repository. This repository will be the single source of truth for all database operations. As we move forward we will add configs for different environments. To execute `migrations` for the targeted enviroment use `-e` switch from `db-migrate`.

As we spin up additional environments, `database config` shall be pulled from a `private s3 bucket` or via `secrets manager`. No database configs shall be stored in `git`. Which means, `nodejs` scripts must be refactored. 

### Dependencies 

* NodeJs >= `v0.18.2` 
* Docker For Desktop 
* PostGreSql running in a container 
* PgAdmin (IDE for PostGreSql) 
* VSCode

Resources explained as below,

* ddl => holds database scripts (for reference)
* migrations => holds database migrations.
* init.js => used by the shell script to generate a default database json file
* index.js => used by the shell script to replace database json file with database and schema name 
* db.sh => shell script to scaffold a database, schema, re-create database config json and create an initial physical database objects
* tear.sh => IMPORTANT: Only run in the dev database. Dangerous! Script will present with a prompt before tearing down resources.

### Node / NVM

`Linux / MacOS`: Install [nvm (node version manager)](https://github.com/nvm-sh/nvm) to manage `nodejs` versions. (Opinionated Preference) 

`Windows`. Install `latest` version of NodeJs. 

### PosGreSql Docker

Install `docker` for desktop on `MacOs or Windows`. Pull `posgresql` image from dockerhub. 

```
# pull docker image
docker pull postgres

# make a directory for a volume mount
mkdir data 

# run container 
docker run -d --restart always --name postgres -p 5432:5432 -e POSTGRES_USER=admin -e POSTGRES_PASSWORD=password -v data:/var/lib/postgresql/db postgres

```

### .db-migraterc

This file is used to provide options for `db-migrate`. For this repository, default option of `sql-file` is set to `true`. This option will generate `sql` files for the migrations. 


### Create the Database

Run `createdb.sh` script to create a new database. Replace `dev` with environment of choice (if more than one in play)

```
./createdb.sh dev
```

### Run migrations

Run `run_migrations.sh` to create database objects. Replace `dev` with environment of choice (if more than one in play)

```
./run_migrations.sh dev 
```

### PgAdmin 

Install [PgAdmin](https://www.pgadmin.org/) IDE for PosGreSql. Create a `new server` in PgAdmin. Below are some sample screens for configuring a new server in PgAdmin with localhost.

![General Configuration!](/images/local_server.png "General Configuration")


![Connection Configuration!](/images/local_connection.png "Connection Configuration")

### Reset migrations (if required)

This action will wipeout the database. (proceed with caution). Replace `dev` with environment of choice (if more than one in play)

```
./reset_migrations.sh dev
```

### Add / Remove A New Migration 

To perform any `ddl` or a `dml` create a new migration using `db-migrate` as below. This command will create two migration files and one Javascript file. Migration files are under `migrations` directory with a timestamp and migration name. Add SQL to create new table in the `up` migration file. Quite similarly, add SQL to drop table in the `down` migration file. 

```
# e.g. create a new table called country_ref 
# default is set to use sql file
db-migrate create country-ref

# add sql to create a new table under "up" migration file 
CREATE TABLE country_ref (
    country_cd VARCHAR(2),
    country_name VARCHAR(30)
);

# add sql to drop the table under "down" migration file 
DROP TABLE country_ref;

# run the up migration to create a new table
db-migrate up 

# run the down migration to drop the new table
db-migrate down
```


### Create Database Config only

To reset database config run a standalone script as below.

```
node index.js
```

### Clear Database Config

To clear database config run a standalone script as below.

```
node reset_config.js
```

### Aktivu Schema

Considering `database best practices`, all Aktivu objects must be persisted under a dedicated schema. e.g. `aktivu`. Database migrations will take care of creating required schema. 

### Default User 

After scaffolding database, run `sql commands` in `default_user.sql`. Modify `email / password` according to your preference. 

### Disclaimer

`db-migrate` is seen as one of the ideal tools to manage database modifications. Additionally, it is a best practice to source control and retain history of database modifications. 

*This guide is a moving target*




