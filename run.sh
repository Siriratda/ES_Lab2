#!/bin/bash

# Start MongoDB container
docker run -d --name mongodb -v ~/dalab2_project/mongodb/init.js:/docker-entrypoint-initdb.d/init.js mongo

# Start Express container
docker build -t expresstrue ~/expresstrue_project/express
docker run -d --name expresstrue --link mongodb -p 3000:3000 expresstrue

# Start Nginx container
docker run -d --name nginx -p 8080:80 -v ~/dalab2_project/nginx/nginx.conf:/etc/nginx/nginx.conf -v ~/dalab2_project/nginx/index.html:/usr/share/nginx/html/index.html nginx
