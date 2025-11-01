-- Create schema for Sarah
CREATE SCHEMA IF NOT EXISTS sarah;

-- Example table in Sarah's schema
CREATE TABLE IF NOT EXISTS sarah.projects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    deadline DATE
);

CREATE TABLE IF NOT EXISTS sarah.tasks (
    id SERIAL PRIMARY KEY,
    project_id INT REFERENCES sarah.projects(id),
    description VARCHAR(255),
    completed BOOLEAN DEFAULT FALSE
);
