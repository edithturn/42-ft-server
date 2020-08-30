FROM debian:buster


RUN apt-get update -y	 &&\
		apt-get install wget vim -y	 &&\
		apt-get install supervisor -y	 &&\
		apt-get install nginx -y	&&\
		apt-get install mariadb-server -y	&&\
		apt-get install php-fpm php-cli php-mbstring php-mysql -y

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

#php on nginx
COPY ./srcs/config/supervisord.conf	/etc/supervisor/conf.d/supervisord.conf
COPY ./srcs/nginx/default /etc/nginx/sites-available/default
RUN rm /var/www/html/*
#COPY ./php/index.php /var/www/html/

# mysql on php
COPY ./srcs/mysql/create_db.sh ./
RUN bash create_db.sh

# wordpress
RUN mkdir /var/www/html/phpMyAdmin
COPY ./srcs/wordpress/wordpress-5.5.tar.gz /var/www/html/
COPY ./srcs/phpMyAdmin/phpMyAdmin-5.0.2-english.tar.gz /var/www/html/phpMyAdmin/
RUN cd  /var/www/html/  && tar -zxf wordpress-5.5.tar.gz && rm wordpress-5.5.tar.gz && mv wordpress/* . && rm -r wordpress
RUN cd /var/www/html/phpMyAdmin && tar -zxf phpMyAdmin-5.0.2-english.tar.gz && rm phpMyAdmin-5.0.2-english.tar.gz && mv phpMyAdmin-5.0.2-english/* . && rm -r phpMyAdmin-5.0.2-english

CMD ["/usr/bin/supervisord"]



