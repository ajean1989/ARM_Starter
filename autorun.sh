#!/bin/bash

cd Mariadb 
docker compose up -d

cd ..
cd Mongodb 
docker compose up -d

cd ..
cd Traefik
docker compose up -d

cd ..