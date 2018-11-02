#!/bin/bash

mysql -uroot -p projekt < sql/projekt_setup.sql

mysql -uroot -p projekt < sql/projekt_ddl.sql

mysql -uroot -p projekt < sql/insert.sql
