from app import __version__


def test_version():
    assert __version__ == '0.1.0'


def test_get_hello_returns_expected_response(client):
    response = client.get("/")
    assert response.status_code == 200
    assert response.json() == {"message": "Hello World!"}
