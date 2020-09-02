FROM debian:buster

LABEL maintainer="Edith Puclla <epuclla@student.42.us.org>"

#RUN export DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y &&\
		apt-get install nano vim dialog apt-utils -y &&\
		apt-get -y install curl &&\
		apt-get install nginx -y &&\
		apt-get install mariadb-server -y &&\
		apt-get install php7.3-cli php7.3-fpm php7.3-mysql php7.3-json php7.3-opcache php7.3-mbstring php7.3-xml php7.3-gd php7.3-curl -y
		#apt-get install php php7.3-fpm php7.3-common php7.3-mysql php7.3-gmp php7.3-curl php7.3-intl php7.3-mbstring php7.3-xmlrpc php7.3-gd php7.3-xml php7.3-cli php7.3-zip php7.3-soap php7.3-imap -y

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 80
EXPOSE 443

COPY srcs /tmp/
CMD bash ./tmp/setup_application.sh



