from sqlalchemy import text
from connect import engine

# moving / copying tables between schemas is a DDL operation - not handled by SA ORM
# need to use SA Core to execute raw SQL

# to copy a table, use:
with engine.connect() as conn:
    conn.execute(text("CREATE SCHEMA IF NOT EXISTS hr_backup;"))
    conn.execute(text("CREATE TABLE hr_backup.people AS TABLE hr.people;"))
    conn.commit()

# Moving tables between schema is also a DDL operation - this will remove from original schema
with engine.connect() as conn:
    conn.execute(text("CREATE SCHEMA IF NOT EXISTS hr_new;"))
    conn.execute(text("ALTER TABLE hr.people SET SCHEMA hr_new;"))
    conn.commit()

# once this has been done - our ORM models need to be created/updated to reflect the new schema locations
# otherwise we will get errors when trying to do CRUD operations

# copying table as above will only copy data - will not copy structure/primary keys/constraints/indexes
# these need to be created separately via additional DDL operations or via a tool such as liquibase