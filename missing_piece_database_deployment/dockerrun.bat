docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=F@tSt@cks" -p 1433:1433 --name MeetingsDb --hostname meetings -d mcr.microsoft.com/mssql/server:2022-latest

docker run --rm -v C://docker/volumes/flyway/sql:/flyway/sql -v C://docker/volumes/flyway/config:/flyway/conf flyway/flyway migrate