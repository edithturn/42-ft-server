#!/bin/bash

echo ""
echo "----------------------- Start Mysql ----------------------------"
service mysql start

echo "Creating database"
mysql --user=root --password=toor << EOF
CREATE DATABASE db_wordpress CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
GRANT ALL ON db_wordpress.* TO admin @'localhost' IDENTIFIED BY 'admin';
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