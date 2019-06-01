#!/bin/bash
# Base Installer file for AWS LightSail. 

# This will install the base tools that are needed for the rest of the install of Wordpress.
# After this, you will need to login and finish the configuration and install of Wordpress and the server.

yum update -y
yum install php73 php73-mysqlnd php73-pecl-memcache python36 mysql57 -y

chkconfig --level 345 httpd on
chkconfig --level 345 mysqld on
service mysqld start
