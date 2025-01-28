CREATE DATABASE exestore;

CREATE SCHEMA store;

CREATE TABLE "store".customer (
    customer_id int NOT NULL PRIMARY KEY,
    name varchar(30) NOT NULL,
    email varchar(50) NOT NULL,
    phone int,
    CONSTRAINT unique_name UNIQUE (nome)
    CONSTRAINT unique_email UNIQUE (email)
);

CREATE TABLE "store".product (
    product_id int NOT NULL PRIMARY KEY,
    size int NOT NULL,
    weight int NOT NULL,
    price int NOT NULL
);

CREATE TABLE "store".product_stock (
    product_id int NOT NULL PRIMARY KEY,
    disponibility boolean NOT NULL,
    quantity int,
    CONSTRAINT fk_product_stock FOREIGN KEY (product_id) REFERENCES store.product(product_id)
);

INSERT INTO store.customer (name, email, phone) VALUES ('Arthur', 'arthur@gmail.com', 99 9999-9999)

INSERT INTO store.product (size, weight, price) VALUES (4, 5, 6)

INSERT INTO store.product_stock (disponibility, quantity) VALUES (True, 45)

ALTER TABLE store.customer ADD CONSTRAINT fk_order_customer FOREIGN KEY (customer_id) REFERENCES store.product(product_id)