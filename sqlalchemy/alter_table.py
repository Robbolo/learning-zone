from sqlalchemy import text
from connect import engine

# if we just changed the ORM model - when we do metadata.create_all nothing will happen
# because it only creates missing tables/columns - it does not alter existing ones

# Option 1 - update via raw SQL

with engine.connect() as conn:
    conn.execute(text("ALTER TABLE hr.employee ADD COLUMN email VARCHAR;"))
    conn.commit()

# Option 2 - use liquibase!

