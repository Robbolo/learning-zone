--liquibase formatted sql

--changeset sarah:001
CREATE SCHEMA IF NOT EXISTS sarah;

--changeset sarah:002
CREATE TABLE IF NOT EXISTS sarah.projects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    deadline DATE
);

--changeset sarah:003
CREATE TABLE IF NOT EXISTS sarah.tasks (
    id SERIAL PRIMARY KEY,
    project_id INT REFERENCES sarah.projects(id),
    description VARCHAR(255),
    completed BOOLEAN DEFAULT FALSE
);