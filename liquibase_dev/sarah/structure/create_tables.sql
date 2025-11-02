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

--changeset sarah:004
CREATE TABLE IF NOT EXISTS sarah.fairies (
    id SERIAL PRIMARY KEY,
    wing_type INT,
    fey_domain VARCHAR(255),
    completed BOOLEAN DEFAULT FALSE
);

--changeset sarah:005
CREATE TABLE IF NOT EXISTS sarah.cakes (
    id SERIAL PRIMARY KEY,
    filling INT,
    ingrediants VARCHAR(255),
    eaten BOOLEAN DEFAULT FALSE
);