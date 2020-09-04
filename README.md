# ft_server  :whale2: :whale2:
Set up a web server with Nginx, phpMyAdmin, MySQL, WordPress and SSL.


##  General Process :bell:
![General Flow](img/general.png)


## Nginx Autoindex in "on"
![Autoindex ON](img/autoindex_on.png)

## PhpMyAdmin
![PhpMyAdmin ON](img/phpadmin.png)

## Wordpress
![Wodrpress](img/wordpress.png)

## MySql database
![MySql database](img/database_mysql.png)


## Docker Commands

### Images
```bash
docker build -t ft_server .
```
### Container
Run container
```bash
docker run --name ft_server -it  -p 80:80 -p 443:443 ft_server
```
See running containers
```bash
docker ps
```
See dead containers
```bash
docker ps -a
```
Open the running container
```bash
docker exec -it ft_nginx /bin/bash
```
Stop the running container
```bash
docker stop ft_nginx
```

### Resources :jack_o_lantern:

[Create ssl keys] (https://linuxize.com/post/creating-a-self-signed-ssl-certificate/)

[Confgure nginx for ssl] (https://phoenixnap.com/kb/install-ssl-certificate-nginx)

[ Owner of wordpress] (https://emiliocastro.com.mx/fixing-wordpress-a-mini-tutorial/)

[Configure wordpress]https://wordpress.org/support/article/editing-wp-config-php/


### ft_server pdf  new curriculum
[Download from HERE](https://drive.google.com/file/d/1OlPM7qewRFtc-hkJ7k1q1FJ4vTv1xkWT/view?usp=sharing)
 
