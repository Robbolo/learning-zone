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
