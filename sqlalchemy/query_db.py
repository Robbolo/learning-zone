from sqlalchemy.orm import sessionmaker
from connect import engine
from model import Person

# setup session for connection
Session = sessionmaker(bind=engine)
session = Session()

people = session.query(Person).all()
for person in people:
    print(f"ID: {person.id}, Name: {person.name}, Age: {person.age}")