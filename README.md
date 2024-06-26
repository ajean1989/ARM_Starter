# Projet

Projet de fin d'étude de la certification Simplon : Développeur en Intelligence Artificielle. 
Ce projet est répartie en 5 thèmes: 
- Collecte des données : via SQL et NoSQL.
- Veille technologique sur un modèle d'IA : modèle de détection d'objet.
- Entrainement d' un modèle de détection d'objet, monitoring du modèle, déploiement continue et exposition via une API. 
- Interface web, pipeline CI/CD.
- Monitoring de l'application.

Ce projet est architecturé en micro-services. 3 repositories sont comoposés de plusieurs containers docker indépendants les uns des autres.  

# Starter

Ce repository à vocation à être utilisé pour initialiser le serveur de déploiement. 

Il peut bien sur être utilisé en local pour connecter les autres microservices dessus sur le réseau docker `production-network`.

Lance : 
- MariaDB
- MongoDB
- Traefik
- Python pour les tests fonctionnels 

Pour initialiser tous les containers : `bash run/build.sh`.
Pour initialiser tous les containers et lancer le container de test : `bash run/tests.sh`.

# MariaDB

Dans le dossier "Mariadb" se trouve le MCD de la base de données Maria DB. 

Au lancement du container, la base de données est initialisée avec le volume partagé `volumes\mariadb\db` sur le serveur distant qui est le miroir de `/var/mysql/`.   
Si ces bases n'existent pas, elle est initialisée avec les fichiers `.sql` contenus dans le dossier `volumes\mariadb\init` qui contient le dernier backup en date. 

à faire : automatiser le backup dans `volumes\mariadb\backup` + remplace `volumes\mariadb\init` pour initialiser avec dernier backup. 


# Mongo db

Dans le dossier "Mongodb" se trouve le modèle de la base de données Mongo. 

Au lancement du container, la base de données est initialisée avec le volume partagé `volumes\mongo\db` sur le serveur distant qui est le miroir de `/data/db`.   
Si ces Bases n'existent pas, elle est initialisée avec les fichiers `.sjs` contenus dans le dossier `volumes\mongodb\init` qui contient le dernier backup en date. 

à faire : automatiser le backup dans `volumes\mongodb\backup` + remplace `volumes\mongodb\init` pour initialiser avec dernier backup. 