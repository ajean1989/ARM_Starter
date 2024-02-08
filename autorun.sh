#!/bin/bash

docker network create --driver=bridge production-network
sleep 5

cd Mariadb 
docker compose up -d

cd ..
cd Mongodb 
docker compose up -d

cd ..
cd Traefik
docker compose up -d

cd ..