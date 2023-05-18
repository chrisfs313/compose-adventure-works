# Project with Docker and Docker-Compose
Creates a SQL Server and restore the Adventure Works 2017 Data Warehouse database, the commands to execute in the root of the project:
 
To start it: docker-compose -f .\Build\Compose\DT.ELearning.docker-compose.yml up
To stop it: docker-compose -f .\Build\Compose\DT.ELearning.docker-compose.yml down -v

Technologies involved:
- sqlserver
- Docker and docker-compose
- shell scripts
- BAK file

Now enter SQL Server Management Studio and connect like this:
- server: localhost, 1433
- user: SA
- password: password1234!