from sqlalchemy import Column, Integer, String, ForeignKey, MetaData
from sqlalchemy.orm import declarative_base, relationship
from sqlalchemy import text
from connect import engine

# lets Base inherit the metadata attribute with a schema defined
metadata = MetaData(schema='hr')
Base = declarative_base(metadata=metadata)

class Department(Base):
    __tablename__ = 'department'
    
    id = Column(Integer, primary_key=True)
    name = Column(String)

    employees = relationship("Employee", back_populates="department")

class Employee(Base):
    __tablename__ = 'employee'
    
    id = Column(Integer, primary_key=True)
    name = Column(String)
    email = Column(String)
    department_id = Column(Integer, ForeignKey('hr.department.id'))

    department = relationship("Department", back_populates="employees")


# SA ORM is for table/column definitions and CRUD ops
# infrastructure such as schema/index creation needs to be done via raw SQL in SA Core
with engine.connect() as conn:
    conn.execute(text("CREATE SCHEMA IF NOT EXISTS hr;"))
    conn.commit()

Base.metadata.create_all(engine)