Ce repository à vocation à être utilisé pour initialiser le serveur de déploiement. 

Il peut bien sur être utilisé en local pour initialiser les base de données et le reverse proxy. 

Lance : 
- MariaDB
- MongoDB
- Traefik
- Python pour les tests fonctionnels 

(Les volumes sont dans le dossier parent de ce repo)

Pour initialiser tous les containers : `bash run/build.sh`.
Pour initialiser tous les containers et lancer le container de test : `bash run/tests.sh`.

# MariaDB

Dans le dossier Maria se trouve le modèle de la base de données Maria DB. 

Au lancement du container, la base de données est initialisée avec le volume partagé contenant ARM_Market et ARM_Market_test.  
Si ces Bases n'existent pas, elle est initialisée avec les fichiers `.sql` contenus dans le dossier `volumes\mariadb\init`.

à faire : automatiser le backup dans `volumes\mariadb\backup` + remplace `volumes\mariadb\init` pour initialiser avec dernier backup. 


# Mongo db

Au lancement du container, la base de données est initialisée avec le volume partagé.  
Si il n'y a pas de collections, elle est initialisée avec les fichiers contenus dans le dossier `volumes\mongodb\init`.


à faire : automatiser le backup dans `volumes\mariadb\backup` + remplace `volumes\mariadb\init` pour initialiser avec dernier backup. 