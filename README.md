# Code Critters

This is Code Critters, another mutation testing game. 

## Installation

### Requirements

- Apache Maven
- MySQL  
or
- Docker and docker-compose  


- npm or yarn (only for developement)

For starting the game, you only need a MySQL Server (e.g. [MariaDB](https://mariadb.org/)) running. 
for the sake of simplicity, the project contains a docker-compose file that starts a MySql
instance with
```bash
docker-compose up
```
. A db-dump containing some demo data has also been added to the project. 
For development you also need a installation of npm (or yarn) to load frontend dependencies.

### Run from within an IDE

Since this project is build with the Spring framework, you do can run the Project from
within your IDE without any extra installations. Only some frontend dependencies need to 
be loaded. This needs to be done in the `resources/static` and you can either use npm: 
```bash
npm install
```
or yarn:
```bash
yarn install
```

#### Configuration

To Configure the system, you need to edit the `application.properties` in the `resources` 
folder. This file also holds the database settings (Initial this data belong to the docker
configuration). 


## Build and Deployment

### Deployment

To Deploy the project, you need to apply some changes to the src:
- Uncomment the `PropertySource`-line in `Code_CrittersServiceApplication`
- Comment out the lines 5 to 14 in `application.properties`
- Optional: Change the logging parameter to `WARN`

After that you can execute 
```bash
nvm clean compile package
```
to deploy the project.

### Before starting the application

To configure the server, you need a directory called `resources` in the folder that 
contains the .jar file. This directory needs to contain the `application.properties` file, 
that now only contains the lines 5 to 14 of the original one. This parameters needs to be 
adopted to your system.  

### Starting the application

To start the application, you simply need to run 
```bash
java -jar Code-Critters-x.x.x.jar
```
Now a server starts and the application is available at localhost on whatever port you 
configured in `application.properties`.