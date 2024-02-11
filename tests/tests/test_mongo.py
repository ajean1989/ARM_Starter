import pymongo
import pytest

from config import *

# Fixture de connexion à la base de données MongoDB
@pytest.fixture(scope="module")
def mongo_client():
    client = pymongo.MongoClient(f"mongodb://{user_mongo}:{pass_mongo}@mongodb:{port_mongo}/")
    yield client
    client.close()

# Test de connexion au serveur MongoDB
def test_mongodb_connection(mongo_client):
    print(mongo_client.server_info())
    assert mongo_client.server_info()