# ft_server
42 FT Server using Nginx - phpMyAdmin - MySQL - WordPress


## Docker Commands

### Images
```bash
docker build -t ft_server .
```
### Container
```bash
# Run container
docker run --name ft_server -it  -p 80:80 -p 443:443 ft_server

# See running containers
docker ps
# See dead containers
docker ps -a
# Open the running container
docker exec -it ft_nginx /bin/bash
# Stop the running container
docker stop ft_nginx
```

### Util commands
```bash
# kill a continare (force)
docker rm -f [contianer_id]
# Kill all zombies container
docker rm $(docker ps -qa)
```


TEST:
https://localhost/phpmyadmin


### Resources

Create ssl keys
https://linuxize.com/post/creating-a-self-signed-ssl-certificate/

Confgure nginx for ssl
https://phoenixnap.com/kb/install-ssl-certificate-nginx


owner of wordpress
https://emiliocastro.com.mx/fixing-wordpress-a-mini-tutorial/

Configure wordpress
https://wordpress.org/support/article/editing-wp-config-php/
