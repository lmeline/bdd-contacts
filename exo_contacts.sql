CREATE DATABASE IF NOT EXISTS 'exo_contacts' CHARACTER SET = 'utf8' COLLATE = 'utf8_general_ci';

SHOW DATABASE;

USE exo_contacts;

CREATE TABLE IF NOT EXISTS pays (
iso_3 VARCHAR(3),
nom VARCHAR(50),
iso_2 VARCHAR(2),
nationalite VARCHAR(50),
);

INSERT INTO pays (iso_3, nom) VALUES

CREATE TABLE IF NOT EXISTS contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(20),
    prenom VARCHAR(70),
    date_de_naissance DATE,
    sexe VARCHAR(10),
    adresse TEXT,
    code_postal VARCHAR(10),
    ville VARCHAR(70),
    pays_iso_3 VARCHAR(3),
);