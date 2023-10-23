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

## Build and Deployment

### Deployment

To Deploy the project, you need to apply some changes in the `src`:
- Uncomment the `PropertySource`-line in `Code_CrittersServiceApplication`
- Comment out the lines 5 to 14 in `application.properties`
- Optional: Change the logging parameter to `WARN`

After that you can execute 
```bash
mvn clean compile package
```
to deploy the project.

### Before starting the application

To configure the server, you need a directory called `resources` in the folder that 
contains the .jar file. This directory needs to contain the `application.properties` file, 
that now only contains the lines 5 to 14 of the original one. This parameters needs to be 
adapted to your system.  

### Starting the application

To start the application, you simply need to run 
```bash
java -jar Code-Critters-x.x.x.jar
```
Now a server starts and the application is available at localhost on whatever port you 
configured in `application.properties`.

### Development

When updating the database schema you can now use flyway migration. To do so, move your migration script
to the folder ``src/main/java/resources/db/migration`` using the correct file naming schema (https://www.red-gate.com/blog/database-devops/flyway-naming-patterns-matter)
and consecutive version numbers in this format ``YYYYMMDD``

## Retrieving usage data

### Get all games of a user with a given username `annanass`:

```http request
GET /statistics/games?userName=annanass
```
Example response:

```json
{
  "user": "admin",
  "games": [
    {
      "gameId": "1375x1dc-9dz3-48c2-a07b-20c0ddy9d893",
      "levelId": "522d9852-803f-4097-a9d0-ae1ddvac8db7",
      "score": 750,
      "mutantsKilled": 10,
      "humansFinished": 5
    },
    {
      "gameId": "98a5cfaf-46q1-48ce-8818-f12a7f7c26c7",
      "levelId": "522d1g52-807f-4597-a9s0-ae1dddmc8db7",
      "score": 750,
      "mutantsKilled": 15,
      "humansFinished": 0
    }
  ]
}
```

### Get information about a game with given gameId `aa125968-8175-485c-9aca-d8c06b77b2d5`:

```http request
GET /statistics/game?gameId=aa125968-8175-485c-9aca-d8c06b77b2d5
```
Example response:

```json
{
    "user": "annanass",
    "game": {
      "gameId": "307db298-26ef-478e-939f-2586ad37ac73",
      "levelId": "7c51e36e-9f19-48b7-ae7b-c27e4b4d0329",
      "score": 750,
      "gameStart": "2023-10-05T10:28:32",
      "gameEnd": "2023-10-05T10:29:32",
      "duration": 60000,
      "paused": true,
      "pauses": [
        {
          "pauseStart": "2023-10-12T12:13:52.937",
          "pauseEnd": "2023-10-12T12:14:05.14"
        }
      ]
    },
    "mineData": {
        "numMines": 2,
        "details": [
            {
                "id": "51c14e4d-940b-4e68-b2cc-049572449291",
                "code": "if ((this.color) !== (\"red\")) {\n\tthis._killCritter(x, y, (this.color), (\"red\"));\n}\n",
                "xPosition": 7,
                "yPosition": 8,
                "deleted": false,
                "updated": false
            },
            {
                "id": "52f26ecc-aede-4b60-j86e-efacfdc8cdbe",
                "code": "if ((this.color) !== (\"red\")) {\n\tthis._killCritter(x, y, (this.color), (\"red\"));\n}\n",
                "xPosition": 4,
                "yPosition": 8,
                "deleted": false,
                "updated": false
            }
        ]
    },
    "mutantDetails": {
        "killed": {
            "totalNumber": 15,
            "details": [
                {
                    "code": "if ((this._globalData.level[this.position.y][this.position.x]) == (\"dirt\")) {\n  (this.color) = (\"yellow\");\n}\n",
                    "init": "(this.color) = (\"blue\");\n",
                    "count": 5
                },
                {
                    "code": "if ((this._globalData.level[this.position.y][this.position.x]) == (\"dirt\")) {\n  (this.color) = (\"orange\");\n}\n",
                    "init": "(this.color) = (\"black\");\n",
                    "count": 1
                },
                {
                    "code": "if ((this._globalData.level[this.position.y][this.position.x]) == (\"dirt\")) {\n  (this.color) = (\"orange\");\n}\n",
                    "init": "(this.color) = (\"green\");\n",
                    "count": 2
                },
                {
                    "code": "if ((this._globalData.level[this.position.y][this.position.x]) == (\"dirt\")) {\n  (this.color) = (\"orange\");\n}\n",
                    "init": "(this.color) = (\"cyan\");\n",
                    "count": 2
                },
                {
                    "code": "if ((this._globalData.level[this.position.y][this.position.x]) == (\"dirt\")) {\n  (this.color) = (\"red\");\n}\n",
                    "init": "(this.color) = (\"orange\");\n",
                    "count": 5
                }
            ]
        },
        "finished": {
            "totalNumber": 0,
            "details": []
        }
    },
    "humanDetails": {
        "killed": {
            "totalNumber": 5,
            "details": [
                {
                    "code": "function anonymous(\n) {\nif ((this._globalData.level[this.position.y][this.position.x]) == (\"dirt\")) {\r\n    (this.color) = (\"orange\");\r\n  }\n}",
                    "init": "function anonymous(\n) {\n(this.color) = (\"red\");\n}",
                    "count": 5
                }
            ]
        },
        "finished": {
            "totalNumber": 0,
            "details": []
        }
    }
}
```

### Get details about a mine in a game, given the gameId, x and y positions:

```http request
GET /statistics/mine?xPosition=7&yPosition=8&gameId=fb125967-6175-488c-9aca-d8c06a77b2d5
```

Example response:

```json
{
    "gameId": "fb125967-6175-488c-9aca-d8c06a77b2d5",
    "xPosition": 7,
    "yPosition": 8,
    "minePlaced": true,
    "updated": true,
    "deleted": true,
    "mineOperationsList": [
        {
            "operation": "CREATION",
            "start": "2023-10-09T10:19:11.039",
            "end": "2023-10-09T10:19:24.582",
            "xml": "<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"assert\" id=\")$l%!S?E!{t!`JY][l^j\" x=\"198\" y=\"178\"><value name=\"target\"><block type=\"properties_user\" id=\")%!j-3S5}s#mx|]q@1~G\"><field name=\"properties\">BODYCOLOR</field></block></value><value name=\"value\"><block type=\"shirt_picker\" id=\"#o_1sxAkCXpLG,W)vXS6\"><field name=\"color\">red</field></block></value></block></xml>",
            "code": "if ((this.color) !== (\"red\")) {\n\tthis._killCritter(x, y, (this.color), (\"red\"));\n}\n"
        },
        {
            "operation": "UPDATE",
            "start": "2023-10-09T10:19:32.379",
            "end": "2023-10-09T10:19:39.951",
            "xml": "<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"assert\" id=\")$l%!S?E!{t!`JY][l^j\" x=\"198\" y=\"178\"><value name=\"target\"><block type=\"properties_user\" id=\")%!j-3S5}s#mx|]q@1~G\"><field name=\"properties\">BODYCOLOR</field></block></value><value name=\"value\"><block type=\"shirt_picker\" id=\"#o_1sxAkCXpLG,W)vXS6\"><field name=\"color\">orange</field></block></value></block></xml>",
            "code": "if ((this.color) !== (\"orange\")) {\n\tthis._killCritter(x, y, (this.color), (\"orange\"));\n}\n"
        },
        {
            "operation": "DELETION",
            "start": "2023-10-09T10:19:55.514",
            "end": "2023-10-09T10:19:57.085",
            "xml": "<xml xmlns=\"https://developers.google.com/blockly/xml\"><block type=\"assert\" id=\")$l%!S?E!{t!`JY][l^j\" x=\"198\" y=\"178\"><value name=\"target\"><block type=\"properties_user\" id=\")%!j-3S5}s#mx|]q@1~G\"><field name=\"properties\">BODYCOLOR</field></block></value><value name=\"value\"><block type=\"shirt_picker\" id=\"#o_1sxAkCXpLG,W)vXS6\"><field name=\"color\">orange</field></block></value></block></xml>",
            "code": "if ((this.color) !== (\"orange\")) {\n\tthis._killCritter(x, y, (this.color), (\"orange\"));\n}\n"
        }
    ]
}
```
