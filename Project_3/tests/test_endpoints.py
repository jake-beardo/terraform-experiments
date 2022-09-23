from fastapi.testclient import TestClient
from app.main import app

import pytest

client = TestClient(app)

def test_create_thumbnail():
    source_url = "sourceurl"
    response = client.post('/thumbnail', json={'url': source_url})
    assert response.status_code == 200