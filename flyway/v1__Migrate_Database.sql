CREATE USER IF NOT EXISTS john IDENTIFIED WITH mysql_native_password BY pw1;
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, INDEX, DROP, ALTER, CREATE TEMPORARY TABLES, LOCK TABLES ON JenkinsPlayground.* TO john;
FLUSH PRIVILEGES;

CREATE TABLE IF NOT EXISTS Vertreter (INDEX (field), surname VARCHAR, familyname, VARCHAR, age INT)
