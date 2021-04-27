Hi! Welcome to PFA Docker.

This project is just for studying purposes using Docker (not docker-compose) and is composed of some sub projects:
- nginx
- node
- mysql

In order to run everything using docker, you will need to follow these steps:

1. Create a folder to store the data from MySQL with `mkdir pfa-data`
2. Start a mysql container from Docker Hub with `docker run -d -v=pfa-data:/var/lib/mysql --name=pfa-mysql --network=pfa-docker andremw/pfa-docker-mysql`
3. Start a node container from Docker Hub with `docker run -d --name=pfa-node --network=pfa-docker andremw/pfa-docker-node`
4. Start an nginx container from Docker Hub with `docker run -it -p 8080:80 --network=pfa-docker andremw/pfa-docker-nginx`
5. Check that the list is shown on http://localhost:8080/modules
