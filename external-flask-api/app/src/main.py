import logging
from flask import Flask
import requests

from settings import settings

app = Flask(__name__)

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s %(levelname)s %(message)s"
)
logging.info(f"Starting app: {settings.APP_NAME}")

@app.route("/")
def get_external_response():
    
    try:
        response = requests.get(settings.FLASK_API_URL)
        
        if response.status_code == 200:
            logging.info(f"API works! Response: {response.text}")
            return {
                'message': f"API works! Response: {response.text}"
            }, 200
            
        else:
            logging.error(f"Unsuccessful connection")

    except Exception as e:
        logging.error(f"Error occured: {e}")
        
    return {
        'message': f"Unsuccessful connection"
    }, 500

if __name__ == "__main__":
    from waitress import serve
    serve(app, host="0.0.0.0", port=5000)