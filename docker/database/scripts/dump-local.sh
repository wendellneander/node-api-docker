#!/usr/bin/bash
source ../../../.env

echo -e "Gerando dump local...\n"
docker exec -it ${APP_NAME}-mysql mysqldump -u ${DB_USER} --password=${DB_PASSWORD} --databases ${DB_NAME} > ../data/${DB_NAME}.sql --no-tablespaces

echo -e "Ajustando dump...\n"
sed -i "/Using a password on the command line interface can be insecure/d" ../data/${DB_NAME}.sql
gzip ../data/${DB_NAME}.sql