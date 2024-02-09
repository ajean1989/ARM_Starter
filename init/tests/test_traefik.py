# Tester toutes routes (réponse 200)

import httpx

def test_aminer():
    response = httpx.get('http://localhost/adminer/')
    assert response.status_code == 200