from flask_wtf import FlaskForm
from wtforms import SelectField, StringField, PasswordField, TextAreaField
from wtforms.validators import InputRequired, Length, Optional

# Yelp having errors with AR, key error
states = ["AL", "AK", "AZ", "CA", "CO", "CT", "DC", "DE", "FL", "GA",
          "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD",
          "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ",
          "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC",
          "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"]


class Input(FlaskForm):
    """Get user's destination & geolocation"""

    state = SelectField('Your State:', choices=[
        (st, st) for st in states], validators=[InputRequired()])
    city = SelectField('Your City:', choices=[], validators=[InputRequired()])


class RegisterForm(FlaskForm):
    """Allow users to reg to participate in creaing custom skate park locs"""
    first_name = StringField("First Name", validators=[
        InputRequired(), Length(min=3)])
    last_name = StringField("Last Name", validators=[
        InputRequired(), Length(min=3)])
    username = StringField("Username", validators=[
                           InputRequired(), Length(min=1, max=20)])
    password = PasswordField("Password", validators=[
                             InputRequired(), Length(min=4)])


class LoginForm(FlaskForm):
    """Have user log in to use UserParkInput form"""
    username = StringField("Username", validators=[
                           InputRequired(), Length(max=30)])
    password = PasswordField("Password", validators=[
        InputRequired(), Length(min=(4))])


class UserParkInput(FlaskForm):
    """Get user's custom park location"""
    park_name = StringField("Park Name", validators=[
                            InputRequired(), Length(max=100)])
    address = StringField("Address", validators=[
        InputRequired(), Length(max=200)])
    description = TextAreaField("Park Description", validators=[
                                InputRequired(), Length(min=5)])
    image = StringField("**Optional** URL Picture Of Your Park",
                        validators=[Optional(), Length(max=400)])


class CommentForm(FlaskForm):
    """Form for user's to post comments"""
    comment = TextAreaField('feature comming soon!',
                            validators=[InputRequired()])
