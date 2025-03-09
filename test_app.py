# test_app.py

import pytest
from app import app

def test_home():
    client = app.test_client()
    response = client.get('/')
    assert response.data == b"Hello, World!"
    assert response.status_code == 200
