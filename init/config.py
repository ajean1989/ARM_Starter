import os

# API KEY

# Exemple de clés API autorisées (à remplacer par vos propres clés)
key = os.getenv("ARM_VPS1_API_KEY")
API_KEYS = {key: "admin"}


# maria DB

# adresse_maria = os.getenv("SERVER_VPS1_IP")
adresse_maria = "localhost"
port_maria = 3306
user_maria = os.getenv("USER_MARIADB")
pass_maria = os.getenv("PWD_MARIADB")
base_maria = "ARMarket"
base_maria_test = "ARMarket_test"

SQLALCHEMY_DATABASE_URL = f"mariadb+mariadbconnector://{user_maria}:{pass_maria}@{adresse_maria}/{base_maria}"

SQLALCHEMY_DATABASE_URL_TEST = f"mariadb+mariadbconnector://{user_maria}:{pass_maria}@{adresse_maria}/{base_maria_test}"


# Mongo DB

adresse_mongo = os.getenv("SERVER_VPS1_IP")
port_mongo = 27017
user_mongo = os.getenv("USER_MONGODB")
pass_mongo = os.getenv("PWD_MONGODB")