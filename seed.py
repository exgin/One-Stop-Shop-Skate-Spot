from app import db
from models import User

db.create_all()

u = User(first_name="Jane", last_name="Doe",
         username="janedoe1", password="abc123")
db.session.add(u)
db.session.commit()
