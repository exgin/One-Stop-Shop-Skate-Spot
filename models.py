from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

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



