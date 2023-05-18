FROM mcr.microsoft.com/mssql/server:2017-CU29-ubuntu-16.04

ENV ACCEPT_EULA=Y
ENV MSSQL_PID=Developer
ENV SA_PASSWORD=password1234!
ENV MSSQL_MEMORYLIMIT_MB=4000

# Set the working directory in the container to /src
WORKDIR /src

# Copy the SQL script to the container
COPY ../../Source/Scripts/Data/AdventureWorksDW2017.bak /var/opt/mssql/backup/
COPY ../../Source/Scripts/sql_up.sh ./sql_up.sh

ENTRYPOINT ./sql_up.sh & /opt/mssql/bin/sqlservr