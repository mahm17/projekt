#!/bin/bash

echo ">> Setup database"
mysql -uroot -p projekt < sql/projekt_setup.sql

echo ">> Insert file"
mysql --local-infile -uuser -ppass projekt < sql/insert.sql

mysql -uuser -ppass projekt -e "SELECT object_id, namn, id, area, length FROM kommuner"
