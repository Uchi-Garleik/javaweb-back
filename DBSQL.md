CREATE DATABASE VintedDB;

USE VintedDB;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idUser INT,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    talla VARCHAR(255) NOT NULL,
    estado VARCHAR(255) NOT NULL,
    precio DECIMAL(7,2) NOT NULL,
    moneda VARCHAR(255) NOT NULL,
    idUser int
);

    --primary-100:#26A69A;
    --primary-200:#408d86;
    --primary-300:#cdfaf6;
    --accent-100:#80CBC4;
    --accent-200:#43A49B;
    --text-100:#263339;
    --text-200:#728f9e;
    --bg-100:#E0F2F1;
    --bg-200:#D0EBEA;
    --bg-300:#FFFFFF;
      

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO users (username, password) VALUES ('uchigatana', '123');


-- Insert Trousers associated with user 1
INSERT INTO products (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser)
VALUES ('Comfort Fit Trousers', 'Casual trousers for men', 'Clothing', 'BrandX', 'Medium', 'New', 39.99, 'USD', 1);

-- Insert T-shirt associated with user 2
INSERT INTO products (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser)
VALUES ('Cotton T-shirt', 'Classic white T-shirt', 'Clothing', 'FashionCo', 'Large', 'New', 19.99, 'USD', 2);

-- Insert Jacket associated with user 3
INSERT INTO products (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser)
VALUES ('Winter Jacket', 'Water-resistant winter jacket', 'Clothing', 'OuterwearTech', 'Small', 'New', 129.99, 'USD', 3);


CREATE USER 'uchi'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON vinteddb.* TO 'uchi'@'localhost';
FLUSH PRIVILEGES;