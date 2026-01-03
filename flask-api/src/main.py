import os
from flask import Flask

app = Flask(__name__)

print(f"Starting application with ENV app_version: {os.getenv('app_version')}")

@app.route("/")
def hello():
    return "Hello, World!"

if __name__ == "__main__":
    from waitress import serve
    serve(app, host="0.0.0.0", port=5000)