#!/bin/bash


echo "~~~~~~~~~~~~~~~~~~~~ BUILD ~~~~~~~~~~~~~~~~~~~~"
docker build -t ft_server .

echo ""
echo "~~~~~~~~~~~~~~~~~~~~ RUN ~~~~~~~~~~~~~~~~~~~~"
docker rm -f $(docker ps -qa)
docker run --name ft_server -it  -p 80:80 -p 443:443 ft_server


