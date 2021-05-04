Hi! Welcome to PFA Docker.

This project is just for studying purposes using Docker (not docker-compose). Do not expect any coding best practices.
The project is composed of some sub projects:
- nginx
- node
- mysql

You can run the project using Docker Compose: `docker-compose up`.

In order to run everything manually using docker, you will need to follow these steps:

1. Create a network with `docker network create pfa-docker`
2. Create a folder to store the data from MySQL with `mkdir pfa-data`
3. Start a mysql container from Docker Hub with `docker run -d -v=pfa-data:/var/lib/mysql --name=pfa-mysql --network=pfa-docker andremw/pfa-docker-mysql`
4. Start a node container from Docker Hub with `docker run -d --name=pfa-node --network=pfa-docker andremw/pfa-docker-node`
5. Start an nginx container from Docker Hub with `docker run -it -p 8080:80 --network=pfa-docker andremw/pfa-docker-nginx`
6. Check that the list is shown on http://localhost:8080/modules
