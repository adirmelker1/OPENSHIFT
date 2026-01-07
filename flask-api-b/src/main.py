import os
import logging
from flask import Flask

from settings import settings

app = Flask(__name__)

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s %(levelname)s %(message)s"
)
logging.info(f"Starting app: {settings.APP_NAME}")

@app.route("/")
def app_name():
    return settings.APP_NAME

if __name__ == "__main__":
    from waitress import serve
    serve(app, host="0.0.0.0", port=5000)