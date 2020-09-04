FROM debian:buster

LABEL maintainer="Edith Puclla <epuclla@student.42.us.org>"

RUN apt-get update -y &&\
		apt-get install nano vim dialog apt-utils -y &&\
		apt-get install curl -y &&\
		apt-get install nginx -y &&\
		apt-get install mariadb-server -y &&\
		apt-get install php7.3-cli php7.3-fpm php7.3-mysql php7.3-json php7.3-opcache php7.3-mbstring php7.3-xml php7.3-curl -y

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 80
EXPOSE 443

COPY srcs /tmp/

CMD bash ./tmp/setup_application.sh



