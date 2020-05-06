from flask_sqlalchemy import SQLAlchemy
from flask_bcrypt import Bcrypt

db = SQLAlchemy()

bcrypt = Bcrypt()


def connect_db(app):
    """Connect to database."""

    db.app = app
    db.init_app(app)


class StateData(db.Model):
    """States/citys"""
    __tablename__ = "states"

    city = db.Column(db.Text, nullable=False)
    state_id = db.Column(db.Text, nullable=False)
    state_name = db.Column(db.Text, nullable=False)
    county_name = db.Column(db.Text, nullable=True)
    timezone = db.Column(db.Text, nullable=True)
    id = db.Column(db.Integer, nullable=False, primary_key=True)

######################################################################
# Not sure if I'll use a user login
######################################################################
######################################################################

# class User(db.Model):
#     """Base user"""
#     __tablename__ = "users"

#     username = db.Column(db.String(20),
#                          nullable=False,
#                          unique=True, primary_key=True)
#     password = db.Column(db.Text,
#                          nullable=False)

#     # Creating our user password
#     @classmethod
#     def register(cls, username, password, email):
#         """Handle registering a user with a hashed password"""
#         hashed = bcrypt.generate_password_hash(password)
#         hashed_utf8 = hashed.decode("utf8")

#         user = cls(username=username, password=hashed_utf8,
#                    email=email)

#         # now within the app.py all we have to do is commit, since we added .add here
#         db.session.add(user)
#         return user

#     # Authenticating our login
#     @classmethod
#     def authenticate(cls, username, password):
#         """Handle authenticating a user to specific parts of a website"""
#         user = User.query.filter_by(username=username).first()

#         if user and bcrypt.check_password_hash(user.password, password):
#             return user
#         else:
#             return False
