from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from model import Base, Person

# set postgres container settings
POSTGRES_USER = "rob"
POSTGRES_PASSWORD = "password"
POSTGRES_DB = "testdb"
POSTGRES_HOST = "localhost"  # This works because of port mapping in docker-compose
POSTGRES_PORT = 5432

# Create SQLAlchemy engine
engine = create_engine(
    f"postgresql+psycopg2://{POSTGRES_USER}:{POSTGRES_PASSWORD}@{POSTGRES_HOST}:{POSTGRES_PORT}/{POSTGRES_DB}"
)

Base.metadata.create_all(engine)

Session = sessionmaker(bind=engine)
session = Session()