--liquibase formatted sql

--changeset rob:001
CREATE SCHEMA IF NOT EXISTS bob;

--changeset rob:002
CREATE TABLE IF NOT EXISTS bob.employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100)
);

--changeset rob:003
CREATE TABLE IF NOT EXISTS bob.departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

--changeset rob:004
ALTER TABLE bob.employees ADD COLUMN IF NOT EXISTS next_of_kin VARCHAR(100);

--changeset rob:005
ALTER TABLE bob.departments ADD COLUMN IF NOT EXISTS director VARCHAR(100);

--changeset rob:006
CREATE TABLE IF NOT EXISTS bob.projects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    start_date DATE,
    end_date DATE
);

--changeset rob:007
CREATE TABLE IF NOT EXISTS bob.hobbies (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    start_date DATE,
    end_date DATE
);