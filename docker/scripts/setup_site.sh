#!/bin/bash

# Start mysql
service mysqld start

# Generate passwords 
DRUPAL_DB="drupal_db"
MYSQL_PASSWORD="root123"
DRUPAL_USER="drupal"
DRUPAL_PASSWORD="drupal123"

usermod -G root mysql
mysqladmin -u root password $MYSQL_PASSWORD
mysql -uroot -p$MYSQL_PASSWORD -e "CREATE DATABASE $DRUPAL_DB; GRANT ALL PRIVILEGES ON $DRUPAL_DB.* TO '$DRUPAL_USER'@'localhost' IDENTIFIED BY '$DRUPAL_PASSWORD'; FLUSH PRIVILEGES;"

# Stop mysqld services
service mysqld stop



## Copy Files to their locations


# php.ini file memory_limit=1024M


