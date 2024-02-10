docker network create --driver=bridge production-network

cd Mariadb 
docker compose up --build -d --force-recreate

cd ..
cd Mongodb 
docker compose up --build -d --force-recreate

cd ..
cd Traefik
docker compose up --build -d --force-recreate

cd ..
cd init
docker compose up --build -d --force-recreate

cd ..