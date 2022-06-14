CREATE DATABASE bigplastic;

USE bigplastic;
CREATE TABLE login
(
    id INT AUTO_INCREMENT NOT NULL,
    user VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
)
ENGINE INNODB;

CREATE TABLE product
(
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2),
    image TEXT,
    PRIMARY KEY(id)
)
ENGINE INNODB;
CREATE TABLE invoice_master
(
    id INT AUTO_INCREMENT NOT NULL,
    client_id INT NOT NULL,
    invoice_date date NOT NULL,
    PRIMARY KEY(id)
)
ENGINE INNODB;

CREATE TABLE invoice_detail
(
    id INT AUTO_INCREMENT NOT NULL,
    invoice_master_id INT NOT NULL,
    product_id INT NOT NULL,
    product_quantity INT,
    PRIMARY KEY(id),
    FOREIGN KEY (invoice_master_id) REFERENCES invoice_master(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
)
ENGINE INNODB;

INSERT INTO login(user, password) VALUES ('admin', 'admin');