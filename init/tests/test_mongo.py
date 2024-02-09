import pymongo
import pytest

# Fixture de connexion à la base de données MongoDB
@pytest.fixture(scope="module")
def mongo_client():
    client = pymongo.MongoClient("mongodb://{user_mongo}:{pass_mongo}@localhost:27017/")
    yield client
    client.close()

# Test de connexion au serveur MongoDB
def test_mongodb_connection(mongo_client):
    assert mongo_client.server_info()