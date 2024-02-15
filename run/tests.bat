docker network create --driver=bridge production-network
timeout /t 5

cd Mariadb 
docker compose up --build -d --force-recreate

cd ..
cd Mongodb 
docker compose up --build -d --force-recreate

cd ..
cd Traefik
docker compose up --build -d --force-recreate


timeout /t 10

cd ..
cd tests
docker compose up --build --force-recreate

cd ..