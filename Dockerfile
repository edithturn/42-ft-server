FROM debian:buster

# nginx
# WordPress
# MySQL
# phpMyAdmin.

RUN apt-get update -y	 &&\
		apt-get install wget vim -y	 &&\
		apt-get install supervisor -y	 &&\
		apt-get install nginx -y	 &&\
		apt-get install default-mysql-server -y	 &&\
		apt-get install php-fpm php-cli php-mbstring php-mysql -y

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY ./srcs/config/supervisord.conf	/etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]