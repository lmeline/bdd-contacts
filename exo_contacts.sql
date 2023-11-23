CREATE DATABASE IF NOT EXISTS exo_contacts;

SHOW DATABASE;

USE exo_contacts;

CREATE TABLE IF NOT EXISTS contacts (
    id INT(11) USIGNED AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(20),
    prenom VARCHAR(70),
    date_de_naissance DATE,
    sexe VARCHAR(10),
    adresse TEXT,
    code_postal VARCHAR(10),
    ville VARCHAR(70),
    pays_iso_3 VARCHAR(3),
);