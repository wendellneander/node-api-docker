#!/usr/bin/bash
source ../../../.env

echo -e "Recriando base... \n"
echo "DROP DATABASE $DB_NAME" | docker exec -i ${APP_NAME}-mysql mysql -u ${DB_USER} --password=${DB_PASSWORD}
echo "CREATE DATABASE $DB_NAME" | docker exec -i ${APP_NAME}-mysql mysql -u ${DB_USER} --password=${DB_PASSWORD}

echo -e "Extraindo base... \n"
gzip -d ../data/${DB_NAME}.sql.gz

echo -e "Subindo base atualizada... \n"
docker exec -i ${APP_NAME}-mysql sh -c "exec mysql -u ${DB_USER} --password=${DB_PASSWORD} ${DB_NAME}" < ../data/${DB_NAME}.sql

echo "Finalizando..."
gzip ../data/${DB_NAME}.sql
git checkout ../data/${DB_NAME}.sql.gz