@REM docker network create --driver=bridge production-network
@REM timeout /t 5

@REM cd Mariadb 
@REM docker compose up --build -d --force-recreate

@REM cd ..
@REM cd Mongodb 
@REM docker compose up --build -d --force-recreate

@REM cd ..
@REM cd Traefik
@REM docker compose up --build -d --force-recreate


timeout /t 10

cd ..
cd tests
docker compose up --build --force-recreate

cd ..