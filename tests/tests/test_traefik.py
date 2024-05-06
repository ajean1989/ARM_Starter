# Tester toutes routes (réponse 200)

import httpx


def test_adminer():
    response = httpx.get('https://jacquenet.traefik.me/adminer/', verify=False)
    print(response)
    assert response.status_code == 200