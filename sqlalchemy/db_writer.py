from sqlalchemy.orm import sessionmaker
from connect import engine
from simple_model import Person

# setup session for connection
Session = sessionmaker(bind=engine)
session = Session()

# make rows via model class

person1 = Person(name="Rob", age=37)
person2 = Person(name="Sarah", age=38)

# add and commit rows to db
session.add_all([person1, person2])
session.commit()