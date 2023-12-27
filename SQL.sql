﻿CREATE TABLE client (
    ID_client INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    Email VARCHAR(255)
);
CREATE TABLE manager (
    ID_manager INT PRIMARY KEY,
    Name VARCHAR(255),
    email varchar(255),
    telephone VARCHAR(20),
);
CREATE TABLE administrator (
    ID_administrator INT PRIMARY KEY,
    Name VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE product (
    ID_product INT PRIMARY KEY,
    title VARCHAR(255),
    description TEXT,
    cost DECIMAL(10, 2),
);

CREATE TABLE applications (
    ID_applications INT PRIMARY KEY,
    applications_date DATE,
    ID_client INT,
    ID_manager INT,
    ID_administrator INT,
    FOREIGN KEY (ID_client) REFERENCES client(ID_client),
    FOREIGN KEY (ID_manager) REFERENCES manager(ID_manager),
    FOREIGN KEY (ID_administrator) REFERENCES administrator(ID_administrator)
);
CREATE TABLE applications_history (
    ID_history INT PRIMARY KEY,
    ID_order INT,
    ID_client INT,
    FOREIGN KEY (ID_applications) REFERENCES applications(ID_applications),
    FOREIGN KEY (ID_client) REFERENCES client(ID_client)
);
