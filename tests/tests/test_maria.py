import pytest
from sqlalchemy import create_engine, text, MetaData

from config import *



# Fixture de connexion à la base de données
@pytest.fixture(scope="session")
def dengine():
    engine = create_engine(SQLALCHEMY_DATABASE_URL)
    yield engine
    engine.dispose()


@pytest.fixture(scope="session")
def engine_test():
    engine = create_engine(SQLALCHEMY_DATABASE_URL_TEST)
    yield engine
    engine.dispose()



# Test de connexion à la base de données
def test_db_connection(engine):
    with engine.connect() as connection:
        result = connection.execute(text("SELECT 1"))
        assert result.scalar() == 1

# Test de structure des tables
def test_table_structure(engine):
    metadata = MetaData()
    metadata.reflect(bind=engine)
    assert "table_name" in metadata.tables
    assert "column_name" in metadata.tables["table_name"].columns


# Test de connexion à la base de données de test
def test_db_connection(engine_test):
    with engine_test.connect() as connection:
        result = connection.execute(text("SELECT 1"))
        assert result.scalar() == 1

# Test de structure des tables de test
def test_table_structure(engine_test):
    metadata = MetaData()
    metadata.reflect(bind=engine_test)
    assert "item" in metadata.tables
    assert "scan" in metadata.tables
    assert "username" in metadata.tables["_user"].columns
