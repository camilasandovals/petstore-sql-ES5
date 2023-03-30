CREATE DATABASE petstore;

SHOW DATABASE;

USE petstore;

CREATE TABLE owners(ownerId INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    email VARCHAR(30) UNIQUE,
    phone VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SHOW TABLE;
INSERT INTO owners (firstName, lastName, email, phone) 
VALUES ('Sergio', 'Colmenares', 'colmenares@gmail.com', 7543847778),
('Camila', 'Sandoval', 'sandoval@hotmail.com', 7542678877),
('Nubia', 'Blanco', 'blanco@hotmail.com', 9543718989);

SELECT * FROM owners;

CREATE table pets(
    petsId INT AUTO_INCREMENT PRIMARY KEY,
    ownersId INT NOT NULL,
    petBreed VARCHAR(20) NOT NULL,
    petDOB TIMESTAMP
);

INSERT INTO pets (ownersId, petBreed) 
VALUES (1, 'corgi'), (3, 'pitbull');

SELECT * FROM pets;

