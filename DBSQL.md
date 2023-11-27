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

CREATE DATABASE VintedDB;

USE VintedDB;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    talla VARCHAR(255) NOT NULL,
    estado VARCHAR(255) NOT NULL,
    precio DECIMAL(7,2) NOT NULL,
    moneda VARCHAR(255) NOT NULL,
    idUser int,
    imagePath VARCHAR(400) DEFAULT '/content/images/default.png'
);


      

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO users (username, password) VALUES ('uchigatana', '123');


INSERT INTO users (username, password) VALUES
('user1', 'password1'),
('user2', 'password2'),
('user3', 'password3'),
('user4', 'password4'),
('user5', 'password5'),
('user6', 'password6'),
('user7', 'password7'),
('user8', 'password8'),
('user9', 'password9'),
('user10', 'password10'),
('user11', 'password11'),
('user12', 'password12'),
('user13', 'password13'),
('user14', 'password14'),
('user15', 'password15'),
('user16', 'password16'),
('user17', 'password17'),
('user18', 'password18'),
('user19', 'password19'),
('user20', 'password20');


-- Insert products for user 1
INSERT INTO products (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser) VALUES
('Product 1', 'Description 1', 'Category A', 'Brand X', 'M', 'New', 50.00, 'USD', 1),
('Product 2', 'Description 2', 'Category B', 'Brand Y', 'L', 'Used', 30.00, 'USD', 1);

-- Insert products for user 2
INSERT INTO products (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser) VALUES
('Product 3', 'Description 3', 'Category A', 'Brand Z', 'S', 'New', 75.50, 'EUR', 2),
('Product 4', 'Description 4', 'Category C', 'Brand X', 'XL', 'Used', 20.00, 'USD', 2);

-- Repeat similar inserts for the remaining users (up to user 10)

-- Insert products for user 10
INSERT INTO products (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser) VALUES
('Product 33', 'Description 33', 'Category B', 'Brand Z', 'M', 'New', 40.00, 'USD', 10),
('Product 34', 'Description 34', 'Category C', 'Brand Y', 'L', 'Used', 60.00, 'USD', 10),
('Product 35', 'Description 35', 'Category A', 'Brand X', 'S', 'New', 25.00, 'USD', 10);


-- Insert Trousers associated with user 1
INSERT INTO products (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser)
VALUES ('Comfort Fit Trousers', 'Casual trousers for men', 'Clothing', 'BrandX', 'Medium', 'New', 39.99, 'USD', 1);

-- Insert T-shirt associated with user 2
INSERT INTO products (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser)
VALUES ('Cotton T-shirt', 'Classic white T-shirt', 'Clothing', 'FashionCo', 'Large', 'New', 19.99, 'USD', 2);

-- Insert Jacket associated with user 3
INSERT INTO products (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser)
VALUES ('Winter Jacket', 'Water-resistant winter jacket', 'Clothing', 'OuterwearTech', 'Small', 'New', 129.99, 'USD', 3);

-- Insert products for user 3
INSERT INTO products (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser) VALUES
('Product 5', 'Description 5', 'Category B', 'Brand Y', 'M', 'Used', 45.00, 'USD', 3),
('Product 6', 'Description 6', 'Category C', 'Brand Z', 'XL', 'New', 55.00, 'USD', 3);

-- Insert products for user 4
INSERT INTO products (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser) VALUES
('Product 7', 'Description 7', 'Category A', 'Brand X', 'S', 'New', 30.00, 'USD', 4),
('Product 8', 'Description 8', 'Category B', 'Brand Y', 'L', 'Used', 40.00, 'USD', 4);

-- Repeat the pattern for users 5 to 9

-- Insert products for user 5
INSERT INTO products (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser) VALUES
('Product 9', 'Description 9', 'Category A', 'Brand Z', 'M', 'New', 60.00, 'USD', 5),
('Product 10', 'Description 10', 'Category C', 'Brand X', 'XL', 'Used', 25.00, 'USD', 5);

-- Insert products for user 6
INSERT INTO products (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser) VALUES
('Product 11', 'Description 11', 'Category B', 'Brand Y', 'S', 'Used', 35.00, 'USD', 6),
('Product 12', 'Description 12', 'Category C', 'Brand Z', 'L', 'New', 50.00, 'USD', 6);

-- Insert products for user 7
INSERT INTO products (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser) VALUES
('Product 13', 'Description 13', 'Category A', 'Brand X', 'M', 'New', 45.00, 'USD', 7),
('Product 14', 'Description 14', 'Category B', 'Brand Y', 'XL', 'Used', 30.00, 'USD', 7);

-- Insert products for user 8
INSERT INTO products (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser) VALUES
('Product 15', 'Description 15', 'Category C', 'Brand Z', 'S', 'New', 40.00, 'USD', 8),
('Product 16', 'Description 16', 'Category A', 'Brand X', 'L', 'Used', 55.00, 'USD', 8);

-- Insert products for user 9
INSERT INTO products (nombre, descripcion, categoria, marca, talla, estado, precio, moneda, idUser) VALUES
('Product 17', 'Description 17', 'Category B', 'Brand Y', 'M', 'Used', 50.00, 'USD', 9),
('Product 18', 'Description 18', 'Category C', 'Brand Z', 'XL', 'New', 35.00, 'USD', 9);


--CREATE TABLE RatingValues (
    --id INT AUTO_INCREMENT PRIMARY KEY,
    --rating DOUBLE
--);

--INSERT INTO RatingValues(rating) VALUES(1);
--INSERT INTO RatingValues(rating) VALUES(2);
--INSERT INTO RatingValues(rating) VALUES(3);
--INSERT INTO RatingValues(rating) VALUES(4);
--INSERT INTO RatingValues(rating) VALUES(5);

--ALTER TABLE RATING ADD CONSTRAINT FK_RATINGUSER_RATING FOREIGN KEY (rating_user) REFERENCES users(id);
--ALTER TABLE RATING ADD CONSTRAINT FK_RATEDUSER_RATING FOREIGN KEY (rated_user) REFERENCES users(id);
--ALTER TABLE RATING ADD CONSTRAINT FK_RATING_RATING FOREIGN KEY (rating) REFERENCES RatingValues(rating);

CREATE TABLE Rating (
    rating_id INT AUTO_INCREMENT PRIMARY KEY,
    rating_user INT,
    rated_user INT,
    rating DOUBLE,
    UNIQUE KEY UK_RATINGUSERS_RATING (rating_user, rated_user)
);

INSERT INTO rating (rating_user, rated_user, rating) VALUES (3, 1, 5);
INSERT INTO rating (rating_user, rated_user, rating) VALUES (2, 4, 3);
INSERT INTO rating (rating_user, rated_user, rating) VALUES (5, 3, 2);
INSERT INTO rating (rating_user, rated_user, rating) VALUES (4, 1, 4);
INSERT INTO rating (rating_user, rated_user, rating) VALUES (2, 3, 5);
INSERT INTO rating (rating_user, rated_user, rating) VALUES (3, 5, 3);
INSERT INTO rating (rating_user, rated_user, rating) VALUES (4, 2, 1);
INSERT INTO rating (rating_user, rated_user, rating) VALUES (5, 1, 4);
INSERT INTO rating (rating_user, rated_user, rating) VALUES (2, 5, 2);
INSERT INTO rating (rating_user, rated_user, rating) VALUES (3, 4, 3);
INSERT INTO rating (rating_user, rated_user, rating) VALUES (4, 5, 1);
INSERT INTO rating (rating_user, rated_user, rating) VALUES (5, 2, 4);
INSERT INTO rating (rating_user, rated_user, rating) VALUES (3, 1, 4);
INSERT INTO rating (rating_user, rated_user, rating) VALUES (2, 4, 5);
INSERT INTO rating (rating_user, rated_user, rating) VALUES (5, 3, 2);
INSERT INTO rating (rating_user, rated_user, rating) VALUES (4, 1, 3);


CREATE USER 'uchi'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON vinteddb.* TO 'uchi'@'localhost';
FLUSH PRIVILEGES;