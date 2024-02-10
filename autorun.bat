docker network create --driver=bridge production-network
sleep 5

cd Mariadb 
docker compose up --build -d

cd ..
cd Mongodb 
docker compose up --build -d

cd ..
cd Traefik
docker compose up --build -d

cd ..
cd init
docker compose up --build -d

cd ..