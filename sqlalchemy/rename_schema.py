from sqlalchemy import text
from connect import engine

with engine.connect() as conn:
    conn.execute(text("ALTER SCHEMA hr_backup RENAME TO persons;"))
    conn.commit()