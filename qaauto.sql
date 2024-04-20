CREATE SCHEMA `qaauto` ;
CREATE TABLE car_brands (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);
CREATE TABLE car_models (
    id INT AUTO_INCREMENT PRIMARY KEY,
    carBrandId INT,
    title VARCHAR(255) NOT NULL,
    FOREIGN KEY (carBrandId) REFERENCES car_brands(id)
);
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT,
    carBrandId INT,
    carModelId INT,
    mileage FLOAT,
    initialMileage FLOAT,
    FOREIGN KEY (userId) REFERENCES users(id),
    FOREIGN KEY (carBrandId) REFERENCES car_brands(id),
    FOREIGN KEY (carModelId) REFERENCES car_models(id)
);

INSERT INTO qaauto.car_brands (title) VALUES
('Toyota'),
('Honda'),
('Ford'),
('Chevrolet'),
('BMW'),
('Audi'),
('Mercedes-Benz'),
('Nissan'),
('Hyundai'),
('Volkswagen');

INSERT INTO qaauto.car_models (carBrandId, title) VALUES
(1, 'Camry'),
(1, 'Corolla'),
(2, 'Civic'),
(2, 'Accord'),
(3, 'F-150'),
(3, 'Mustang'),
(4, 'Camaro'),
(5, '3 Series'),
(5, '5 Series'),
(6, 'A4'),
(6, 'Q5'),
(7, 'E-Class'),
(7, 'C-Class'),
(8, 'Altima'),
(8, 'Sentra'),
(9, 'Elantra'),
(9, 'Sonata'),
(10, 'Jetta'),
(10, 'Passat');

INSERT INTO qaauto.users (firstName, lastName, email, password) VALUES
('John', 'Doe', 'johndoe@example.com', 'password1'),
('Jane', 'Smith', 'janesmith@example.com', 'password2'),
('Michael', 'Johnson', 'michaelj@example.com', 'password3'),
('Emily', 'Williams', 'emilyw@example.com', 'password4'),
('David', 'Brown', 'davidbrown@example.com', 'password5'),
('Sarah', 'Davis', 'sarahd@example.com', 'password6'),
('Chris', 'Martinez', 'chrism@example.com', 'password7'),
('Jessica', 'Wilson', 'jessicaw@example.com', 'password8'),
('Andrew', 'Taylor', 'andrewt@example.com', 'password9'),
('Samantha', 'Moore', 'samantham@example.com', 'password10');

INSERT INTO qaauto.cars (userId, carBrandId, carModelId, mileage, initialMileage) VALUES
(1, 1, 1, 50000, 20000),
(2, 2, 3, 60000, 25000),
(3, 3, 5, 40000, 15000),
(4, 4, 7, 30000, 10000),
(5, 5, 9, 35000, 18000),
(6, 6, 11, 20000, 8000),
(7, 7, 13, 25000, 12000),
(8, 8, 15, 28000, 14000),
(9, 9, 17, 32000, 16000),
(10, 10, 19, 40000, 20000);