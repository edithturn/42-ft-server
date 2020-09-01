#!/bin/bash

echo "----------------------- Start Mysql ----------------------------\t"
service mysql start

echo "Creating database"
mysql --user=root --password=toor << EOF
CREATE DATABASE db_wordpress;
CREATE USER 'admin' identified by 'admin';
GRANT USAGE ON db_wordpress.* TO 'admin'@'localhost' identified by 'admin';
GRANT ALL PRIVILEGES ON db_wordpress.* TO 'admin'@'localhost' identified by 'admin';
FLUSH PRIVILEGES;
EOF

echo "Creating table and data"
mysql --user=admin --password=admin db_wordpress << EOF
CREATE TABLE students (id MEDIUMINT NOT NULL AUTO_INCREMENT, firstname CHAR(30) NOT NULL, PRIMARY KEY (id) );
INSERT INTO students (firstname) VALUES ("Edith");
INSERT INTO students (firstname) VALUES ("Zakaria");
INSERT INTO students (firstname) VALUES ("Juanito");
INSERT INTO students (firstname) VALUES ("Elian");
EOF

echo "----------------------- Finish Mysql ----------------------------\t"
