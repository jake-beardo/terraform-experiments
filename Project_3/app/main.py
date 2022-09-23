from fastapi import FastAPI

app = FastAPI()

@app.post("/thumbnail")
def create_thumbnail():
    pass