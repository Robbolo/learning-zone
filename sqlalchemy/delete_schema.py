from sqlalchemy import text
from connect import engine

with engine.connect() as conn:
    conn.execute(text("DROP SCHEMA IF EXISTS hr_copy CASCADE;"))
    conn.commit()

# CASCADE will drop all objects (tables/views) within the schema as well
# RESTRICT will prevent dropping if there are any dependent objects

with engine.connect() as conn:
    conn.execute(text("DROP SCHEMA IF EXISTS hr_backup RESTRICT;"))
    conn.commit()
