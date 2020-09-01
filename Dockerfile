FROM debian:buster

LABEL maintainer="Edith Puclla <epuclla@student.42.us.org>"

RUN apt-get update -y &&\
		apt-get install openssl -y &&\
		apt-get install nginx -y &&\
		apt-get install mariadb-server -y &&\
		apt-get install php-fpm php-cli php-mbstring php-mysql -y

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 80
EXPOSE 443

COPY srcs /tmp/
COPY /srcs/setup_application.sh /tmp
CMD bash ./tmp/setup_application.sh



