/*Création de la base de données Tifosi*/

CREATE DATABASE IF NOT EXISTS Tifosi
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE Tifosi;


/*Création de l'utilisateur Tifosi + droit*/
CREATE USER IF NOT EXISTS 'Tifosi'@'localhost' IDENTIFIED BY 'admin2025';
-- accés au droit sur la base de données 
GRANT ALL PRIVILEGES ON Tifosi.* TO 'Tifosi'@'localhost';
FLUSH PRIVILEGES;


/* Créations des Tables*/

-- Table des marques 
CREATE TABLE IF NOT EXISTS marques (
    id_marques INT AUTO_INCREMENT PRIMARY KEY,
    nom_marque VARCHAR(50) NULL UNIQUE
);

-- Table des boissons
CREATE TABLE IF NOT EXISTS boissons (
    id_boisson INT AUTO_INCREMENT PRIMARY KEY,
    nom_boisson VARCHAR(50) NULL UNIQUE,
    id_marques INT ,
    FOREIGN KEY (id_marques) REFERENCES marques(id_marques) ON DELETE CASCADE
);

-- Table de foccacia
CREATE TABLE IF NOT EXISTS foccacia (
    id_foccacia INT AUTO_INCREMENT PRIMARY KEY,
    nom_foccacia VARCHAR(50) NULL,
    prix DECIMAL(5,2) NULL 
);

-- Table d'ingrédients
CREATE TABLE IF NOT EXISTS ingredients (
    id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
    nom_ingredient VARCHAR(50) NULL
);

-- Table client 
CREATE TABLE IF NOT EXISTS client (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NULL,
    email VARCHAR(150) NOT NULL UNIQUE ,
    code_postal INT NULL
);

-- Table menu
CREATE TABLE IF NOT EXISTS menu (
    id_menu INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NULL,
    prix DECIMAL(5,2) NULL 
);


/* Création des Tables d'insertions */

-- Table de liaison focaccia/ingredient (quantites)
CREATE TABLE IF NOT EXISTS quantites (
    id_foccacia INT NOT NULL,
    id_ingredient INT NOT NULL,
    quantite VARCHAR(50)  NULL,
    PRIMARY KEY (id_foccacia, id_ingredient),
    FOREIGN KEY (id_foccacia) REFERENCES foccacia(id_foccacia) ON DELETE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES ingredients(id_ingredient) ON DELETE CASCADE
);
