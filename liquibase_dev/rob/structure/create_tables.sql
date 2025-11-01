-- Create schema for Rob
CREATE SCHEMA IF NOT EXISTS rob;

-- Example table in Rob's schema
CREATE TABLE IF NOT EXISTS rob.employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS rob.departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);
