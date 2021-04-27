Hi! Welcome to PFA Docker.

This project is composed of some sub projects:
- nginx
- node
- mysql

In order to run everything using docker, you will need to follow these steps:

1. Clone the repository with `git clone https://github.com/andremw/pfa-docker.git`
2. Go to the node folder with `cd node/`
3. Start a node container from Docker Hub with `docker run -d --name=nodecontainer --network=pfa-docker andremw/pfa-docker-node`
4. Go to the nginx folder with `cd ../nginx/`
5. Start an nginx container from Docker Hub with `docker run -it -p 8888:80 --network=pfa-docker andremw/pfa-docker-nginx`
6. Go to the MySQL folder with `cd ../mysql/`
x.
x. Go to the browser and check that everything is working on http://localhost:8888