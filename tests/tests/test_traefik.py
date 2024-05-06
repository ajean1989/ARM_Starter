# Tester toutes routes (réponse 200)

import httpx
import ssl

ssl._create_default_https_context = ssl._create_unverified_context

def test_adminer():
    response = httpx.get('https://traefik/adminer/')
    print(response)
    assert response.status_code == 200