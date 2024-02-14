#!/bin/bash

# Permet au code de s'arrêter et renvoyer une erreur en cas de problème. 
set -e

if docker network ls | grep -q 'production-network'; then
    echo "Le réseau production-network existe."
else
    docker network create --driver=bridge production-network
    sleep 5
fi

cd Mariadb 
docker compose up --build -d

cd ..
cd Mongodb 
docker compose up --build -d

cd ..
cd Traefik
docker compose up --build -d

sleep 10

cd ..
cd tests
docker compose up --build -d

cd ..
