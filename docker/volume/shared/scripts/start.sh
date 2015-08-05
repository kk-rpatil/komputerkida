#!/bin/bash

echo "---------------------------------------------------"
echo "   COPY httpd.conf file "
echo "---------------------------------------------------"
cp -f /home/shared/config/httpd.conf /etc/httpd/conf/

echo "---------------------------------------------------"
echo "   Dumping MySQL DB "
echo "---------------------------------------------------"
service mysqld start
mysql -u drupal -pdrupal123 -D drupal_db -e "source /home/shared/db/drupal.sql"
service mysqld stop

echo "---------------------------------------------------"
echo "   Starting All Services "
echo "---------------------------------------------------"
supervisord -n
