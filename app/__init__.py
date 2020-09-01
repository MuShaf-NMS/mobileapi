from flask import Flask
from flask_restful import Api
from flask_cors import CORS
from app.db import Database
from app.config import Config

app = Flask(__name__)
app.config.from_object(Config)
api = Api(app)
db = Database(app)
#jwt = JWTManager(app)

cors = CORS(app, resources={r"*": {"origins": "*"}})

from app.router import router