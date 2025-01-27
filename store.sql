CREATE DATABASE exestore;

CREATE SCHEMA store;

CREATE TABLE "store".customer (
    name varchar(30) NOT NULL,
    email varchar(50) NOT NULL,
    phone int,
    CONSTRAINT unique_name UNIQUE (nome)
    CONSTRAINT unique_email UNIQUE (email)
);

CREATE TABLE "store".product (
    size int NOT NULL,
    weight int NOT NULL,
    price int NOT NULL
);

CREATE TABLE "store".product_stock (
    disponibility boolean NOT NULL,
    quantity int
);