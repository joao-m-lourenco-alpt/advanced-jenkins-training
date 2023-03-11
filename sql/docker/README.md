# SQL Server On Docker

## pull sql image
```
docker pull mcr.microsoft.com/mssql/server:2022-latest
```


## run sql cointainer

```
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=Strong@Passw0rd" \
   -p 1433:1433 --name sql22 --hostname sql1 \
   -d \
   mcr.microsoft.com/mssql/server:2022-latest
```

## copy file to container

```
docker cp ./customers.csv sql22:/
```