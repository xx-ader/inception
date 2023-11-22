#!/bin/bash

# Start MariaDB server
service mariadb start
# Wait for MariaDB to initialize
sleep 5

MYSQLROOTPASS="$MYSQL_ROOT_PASSWORD"
MYSQLDB="$MYSQL_DATABASE"
MYSQLUSER="$MYSQL_USER"
MYSQLPASS="$MYSQL_PASSWORD"

# Create a database (replace "your_database" with the desired database name)
mariadb -e "CREATE DATABASE IF NOT EXISTS $MYSQLDB;"
mariadb -e "CREATE USER IF NOT EXISTS '$MYSQLUSER'@'%' IDENTIFIED BY '$MYSQLPASS';"

mariadb -e "SHUTDOWN;"

mysqld --user=mysql --bind-address=0.0.0

# Keep the script running to keep the container running
