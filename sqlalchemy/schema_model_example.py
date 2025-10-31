from sqlalchemy import Column, Integer, String, ForeignKey, MetaData
from sqlalchemy.orm import declarative_base, relationship
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
    department_id = Column(Integer, ForeignKey('hr.department.id'))

    department = relationship("Department", back_populates="employees")

Base.metadata.create_all(engine)