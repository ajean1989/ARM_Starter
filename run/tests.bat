docker network create --driver=bridge production-network 
timeout /t 5

cd Mariadb 
docker compose -f compose.yml -f compose.test.yml up --build -d

cd ..
cd Mongodb 
docker compose up --build -d --force-recreate

cd ..
cd Traefik
docker compose -f compose.yml -f compose.test.yml up --build -d 


timeout /t 15


cd ..
cd tests
docker compose up --build -d --force-recreate

cd ..