import pytest
from sqlalchemy import create_engine, MetaData

from init.config import *



# Fixture de connexion à la base de données
@pytest.fixture(scope="session")
def dengine():
    engine = create_engine(SQLALCHEMY_DATABASE_URL)
    yield engine
    engine.dispose()

def dengine_test():
    engine = create_engine(SQLALCHEMY_DATABASE_URL_TEST)
    yield engine
    engine.dispose()



# Test de connexion à la base de données
def test_db_connection(engine):
    with engine.connect() as connection:
        result = connection.execute("SELECT 1")
        assert result.scalar() == 1

# Test de structure des tables
def test_table_structure(engine):
    metadata = MetaData()
    metadata.reflect(bind=engine)
    assert "table_name" in metadata.tables
    assert "column_name" in metadata.tables["table_name"].columns


# Test de connexion à la base de données de test
def test_db_connection(dengine_test):
    with dengine_test.connect() as connection:
        result = connection.execute("SELECT 1")
        assert result.scalar() == 1

# Test de structure des tables de test
def test_table_structure(dengine_test):
    metadata = MetaData()
    metadata.reflect(bind=dengine_test)
    assert "item" in metadata.tables
    assert "scan" in metadata.tables
    assert "username" in metadata.tables["user"].columns
