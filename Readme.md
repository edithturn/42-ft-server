## ft_server

## Docker Commands

### Images
```bash
docker build -t ft_server:1.0 .
```
### Container
```bash
docker run --name ft_nginx -d -p 8080:80  ft_server:1.0
docker ps
docker ps -a
```

### Util commands
```bash
# kill a continare (force)
docker rm -f [contianer_id]
# Kill all zombies container
docker rm $(docker ps -qa)
```