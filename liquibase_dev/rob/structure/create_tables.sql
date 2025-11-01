--liquibase formatted sql

--changeset rob:001
CREATE SCHEMA IF NOT EXISTS rob;

--changeset rob:002
CREATE TABLE IF NOT EXISTS rob.employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100)
);

--changeset rob:003
CREATE TABLE IF NOT EXISTS rob.departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

--changeset rob:004
ALTER TABLE rob.employees ADD COLUMN IF NOT EXISTS next_of_kin VARCHAR(100);

--changeset rob:005
ALTER TABLE rob.departments ADD COLUMN IF NOT EXISTS director VARCHAR(100);

--changeset rob:006
CREATE TABLE IF NOT EXISTS rob.projects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    start_date DATE,
    end_date DATE
);
