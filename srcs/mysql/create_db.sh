service mysql start
# Creating DB
mysql --user=root --password=toor << EOF
CREATE DATABASE db_wordpress;
CREATE USER 'admin' identified by 'adminpsw';
GRANT USAGE ON db_wordpress.* TO 'admin'@'localhost' identified by 'adminpsw';
GRANT ALL PRIVILEGES ON db_wordpress.* TO 'admin'@'localhost' identified by 'adminpsw';
FLUSH PRIVILEGES;
EOF
# Creating DB and Data
mysql --user=admin --password=adminpsw db_wordpress << EOF
CREATE TABLE students (id MEDIUMINT NOT NULL AUTO_INCREMENT, firstname CHAR(30) NOT NULL, PRIMARY KEY (id) );
INSERT INTO students (firstname) VALUES ("Edith");
INSERT INTO students (firstname) VALUES ("Zakaria");
INSERT INTO students (firstname) VALUES ("Juanito");
INSERT INTO students (firstname) VALUES ("Elian");
EOF