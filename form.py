from flask_wtf import FlaskForm
from wtforms import StringField
from wtforms.validators import InputRequired


class Input(FlaskForm):
    """Get user's destination & geolocation"""

    desired_location = StringField("Where do you want to skate to?", validators=[
                                   InputRequired(message="Please enter a location")])
