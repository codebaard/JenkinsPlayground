#!/bin/sh

echo 'Dispatching Migration files...'

cp v1__Create_Database.sql /var/jenkins_home/flyway-7.13.0/sql/

return 0