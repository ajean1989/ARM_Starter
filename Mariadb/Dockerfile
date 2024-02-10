FROM mariadb:10.11.5

# Copier les scripts SQL dans le conteneur
COPY a.sql /docker-entrypoint-initdb.d/
COPY init_20240210.sql /docker-entrypoint-initdb.d/
COPY init_test_20240210.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
