from typing import Optional

from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()


class Thumbnail(BaseModel):
    url: str
    filename: Optional[str] = None


@app.post("/thumbnail")
def create_thumbnail():
    pass
