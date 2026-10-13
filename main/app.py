from fastapi import FastAPI
app = FastAPI()


@app.get("/")
async def root():
    return {"message": "server is running"}


@app.get("/hello")
async def hello():
    return {"content":"hello from app!"}



if __name__ == "__main__":
    import uvicorn
    uvicorn.run("app:app",host="0.0.0.0", port=8000, log_level="info", reload=True)