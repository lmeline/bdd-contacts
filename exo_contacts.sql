CREATE DATABASE IF NOT EXISTS 'exo_contacts' CHARACTER SET = 'utf8' COLLATE = 'utf8_general_ci';

SHOW DATABASE;

USE exo_contacts;

CREATE TABLE IF NOT EXISTS pays (
iso_3 VARCHAR(3),
nom VARCHAR(50),
iso_2 VARCHAR(2),
nationalite VARCHAR(50),
);

INSERT INTO pays (iso_3, nom, iso_2, nationalite) VALUES
('DZA','Algerie','DZ','Algeriens'),
('FRA','France','FR','Français'),
('FIN','Finlande','FI','Finlandais'),
('DEU','Allemagne','DE','Allemands'),
('EGY','Egypte','EG','Egyptiens'),
('HRV','Croatie','HR','Croates'),
('ARG','Argentine','AR','Argentins'),
('BOL','Bolivie','BO','Boliviens'),
('BRA','Bresil','BR','Bresiliens'),
('BEL','Belgique','BE','Belges');

SELECT * FROM pays;

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