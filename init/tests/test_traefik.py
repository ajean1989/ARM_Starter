# Tester toutes routes (réponse 200)

import httpx

def test_adminer():
    response = httpx.get('http://traefik/adminer/')
    print(response)
    assert response.status_code == 200