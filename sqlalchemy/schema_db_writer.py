from sqlalchemy.orm import sessionmaker
from connect import engine
from schema_model_example import Employee, Department, Base

# create session for connection
Session = sessionmaker(bind=engine)
session = Session()

# create department instances
engineering = Department(name="Engineering")
analysis = Department(name="Analysis")

#  create employee instances (with department relationships)

rob = Employee(name="Rob", department=engineering)

session.add(rob)
session.commit()

employees = session.query(Employee).all()
for e in employees:
    print(f"{e.name} works in {e.department.name}")