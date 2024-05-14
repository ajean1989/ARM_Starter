docker network create --driver=bridge production-network
timeout /t 5

cd Mariadb 
docker compose -f compose.yml -f compose.dev.yml up --build -d --force-recreate

cd ..
cd Mongodb 
docker compose -f compose.yml up --build -d --force-recreate

cd ..
cd Traefik
docker compose --profile dev -f compose.yml -f compose.dev.yml up --build -d --force-recreate

cd ..