from resources.user import User
from flask import Blueprint
from flask_restful import Api

api_bp = Blueprint('api', __name__)
api = Api(api_bp)

# Route
api.add_resource(User, '/user')