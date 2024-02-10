#!/bin/bash

# Permet au code de s'arrêter et renvoyer une erreur en cas de problème. 
set -e

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
cd init
docker compose up -d

cd ..
