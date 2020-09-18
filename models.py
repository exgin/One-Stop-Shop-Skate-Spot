from flask_sqlalchemy import SQLAlchemy
from flask_bcrypt import Bcrypt
from datetime import datetime

bcrypt = Bcrypt()
db = SQLAlchemy()

# Try to re-create error by building a small mini backend app & compare the versions in requirements.txt!


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
    population = db.Column(db.Integer, nullable=False)
    id = db.Column(db.Integer, nullable=False, primary_key=True)


class User(db.Model):
    """User's table"""

    __tablename__ = "user"

    id = db.Column(db.Integer, primary_key=True)
    first_name = db.Column(db.Text, nullable=False, unique=True)
    last_name = db.Column(db.Text, nullable=False, unique=True)
    username = db.Column(db.Text, nullable=False, unique=True)
    password = db.Column(db.Text, nullable=False, unique=True)

    # COMMENT OUT FOR NOW
    # comments = db.relationship('Comments')

    @classmethod
    def register(cls, first_name, last_name, username, password):
        """Sign up a user & hash the password to make it secure"""
        hashed_pwd = bcrypt.generate_password_hash(password).decode('UTF-8')

        user = cls(first_name=first_name, last_name=last_name,
                   username=username, password=hashed_pwd)

        db.session.add(user)

        return user

    @classmethod
    def authenticate(cls, username, password):
        """Make sure user's input the correct password"""
        user = cls.query.filter_by(username=username).first()

        if user and bcrypt.check_password_hash(user.password, password):
            return user
        else:
            return False


class Comments(db.Model):
    """Comments for park posts"""

    __tablename__ = "comments"

    id = db.Column(db.Integer, primary_key=True)
    comment = db.Column(db.Text, nullable=False)
    timestamp = db.Column(db.DateTime, nullable=False,
                          default=datetime.utcnow())

    # COMMENT OUT FOR NOW
    # user_id = db.Column(db.Integer, db.ForeignKey(
    #     'user.id', ondelete="cascade"))

    # # One:Many | one user can have many comments
    # user = db.relationship('User')


class ParkPost(db.Model):
    """Park's post that stores the comments & likes"""

    __tablename__ = 'park_post'

    id = db.Column(db.Integer, primary_key=True)
    park_name = db.Column(db.Text, nullable=False)
    description = db.Column(db.Text, nullable=False)
    address = db.Column(db.Text, nullable=False)

    # COMMENT OUT FOR NOW
    # park's should be assocaited with user's that posted it
    # user_id = db.Column(db.Integer, db.ForeignKey(
    #     'user.id', ondelete="cascade"))
    # comments = db.Column(db.Text, db.ForeignKey(
    #     'comments.id', ondelete="cascade"))


class Likes(db.Model):
    """Likes for the parks"""

    __tablename__ = "likes"

    id = db.Column(db.Integer, primary_key=True)

    # COMMENT OUT FOR NOW
    # make relationship with the user & post, so user's can like the park post
    # user_id = db.Column(db.Integer, db.ForeignKey(
    #     'user.id', ondelete="cascade"))
    # park_post_id = db.Column(db.Integer, db.ForeignKey(
    #     'park_post.id', ondelete="cascade"), unique=True)
