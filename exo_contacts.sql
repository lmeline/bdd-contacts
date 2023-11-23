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
    FOREIGN KEY (pays_iso_3) REFERENCES pays(iso_3)
);

INSERT INTO contacts (nom, prenom, date_de_naissance, sexe, adresse, code_postal, ville, pays_iso_3) VALUES

("Garcia", "Pierre","23-05-1998","Homme","46 rue de la licorne", '13800','Istres','FRA'),
('Dupont','Marie', '15-04-1985', 'Femme', '123 Rue des Roses','10115', 'Berlin','DEU'),
('Santos','Gabriela','30-08-1980', 'Femme', 'Avenida Paulista, 123', '01310-000', 'São Paulo','BRA'),
('Hakkinen','Juha', '10-08-1987', 'Homme', '456 Mannerheimintie', '00100','Helsinki', 'FIN'),
('Rodriguez','Carlos','05-12-1990','Homme','789 Avenida de Mayo','C1084AAA','Buenos Aires','ARG'),
('Kovač', 'Ana','15-03-1985','Femme','Ilica 345','10000','Zagreb','HRV'),
('Morales','Juan','28-09-1992','Homme','Calle Sucre, 567','110001','La Paz','BOL'),
('Bouazizi','Amina','21-05-1983','Femme','123 Rue de la Liberté','16000','Alger','DZA'),
('Van Damme','Jean','20-11-1980','Homme','Avenue des Arts, 890','1040','Bruxelles','BEL'),
('Nasser','Fatima','14-07-1984','Femme','123 Rue du Nil','11511','Le Caire','EGY');

