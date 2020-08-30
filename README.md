# ft_server
42 FT Server using Nginx - phpMyAdmin - MySQL - WordPress


## Docker Commands

### Images
```bash
docker build -t ft_server:1.0 .
```
### Container
```bash
# Run container
docker run --name ft_nginx -d -p 8080:80  ft_server:1.0
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
