# Code Critters

This is Code Critters, another mutation testing game. 

## Installation

### Requirements

- Apache Maven
- MySQL  
or
- Docker and docker-compose  


- npm or yarn (only for developement)
- provide a `.env` file following the `.env.example`

For starting the game, you only need a MySQL Server (e.g. [MariaDB](https://mariadb.org/)) running. 
for the sake of simplicity, the project contains a docker-compose file that starts a MySql
instance with
```bash
docker-compose up -f docker-compose-local.yml
```
A db-dump containing some demo data has also been added to the project. 
For development you also need an installation of npm (or yarn) to load frontend dependencies.

### Run from within an IDE

Since this project is build with the Spring framework, you can run the Project from
within your IDE. Only some frontend dependencies need to 
be loaded. This needs to be done in the `resources/static` folder and you can either use npm: 
```bash
npm install
```
or yarn:
```bash
yarn install
```

#### Configuration

To Configure the system, you need to edit the `application.properties` in the `resources` 
folder. This file also holds the database settings (Initially this data belongs to the docker
configuration). 

## Run Complete Application with Docker-Compose

To start the whole application, including frontend, backend and database execute the `docker-compose.yml`
file with the following command:

```bash
docker-compose up
```
Make sure to have build the most recent `Code-Critters-1.0.1.jar` via `maven package`

### Development

During development, the easiest way to work on Code Critters is first to start only the database via docker
```bash
docker-compose -f docker-compose-local.yml up
```
and then run the spring application as usually via the main method in `Code_CrittersServiceApplication`.

When updating the database schema you can use flyway migrations. To do so, move your migration script
to the folder ``src/main/resources/db/migration`` using the correct file naming schema (https://www.red-gate.com/blog/database-devops/flyway-naming-patterns-matter)
and consecutive version numbers in this format ``YYYYMMDD``

## DevOps

### Deployment Using Docker

- locally run ``maven package`` to get latest jar file `Code-Critters-1.0.1.jar` 
- go on the hosting VM and replace the old jar from the VM with the new one in the `target` folder
- execute ``docker-compose stop``
- git pull latest changes from master and run ``docker-compose up --build --detach``
- NOTE: do not delete local files ``config/certbot`` from VM (responsible for ssl certificate)

- Usually not required because certificate renewal happens automatically, but 
if there is a need to manually recreate ssl certificates, remove certbot files and 
run ``bash init-letsencrypt.sh``
