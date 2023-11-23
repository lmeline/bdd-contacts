CREATE DATABASE IF NOT EXISTS exo_contacts CHARACTER SET = "utf8" COLLATE = "utf8_general_ci" ;


USE exo_contacts ;

CREATE TABLE IF NOT EXISTS pays (
iso_3 VARCHAR(3) PRIMARY KEY NOT NULL,
nom VARCHAR(50),
iso_2 VARCHAR(2),
nationalite VARCHAR(50)
);

INSERT INTO pays (iso_3, nom, iso_2, nationalite) VALUES
('DZA','Algerie','DZ','Algeriens'),
('FRA','France','FR','Francais'),
('FIN','Finlande','FI','Finlandais'),
('DEU','Allemagne','DE','Allemands'),
('EGY','Egypte','EG','Egyptiens'),
('HRV','Croatie','HR','Croates'),
('ARG','Argentine','AR','Argentins'),
('BOL','Bolivie','BO','Boliviens'),
('BRA','Bresil','BR','Bresiliens'),
('BEL','Belgique','BE','Belges');


SELECT * FROM pays ;

CREATE TABLE IF NOT EXISTS contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(20) NOT NULL,
    prenom VARCHAR(70) NOT NULL,
    date_de_naissance DATE NOT NULL,
    sexe VARCHAR(10),
    adresse TEXT NOT NULL,
    code_postal VARCHAR(10) NOT NULL,
    ville VARCHAR(70) NOT NULL,
    pays_iso_3 VARCHAR(3) NOT NULL,
    FOREIGN KEY(pays_iso_3) REFERENCES pays (iso_3)
);

INSERT INTO contacts (nom, prenom, date_de_naissance, sexe, adresse, code_postal, ville, pays_iso_3) VALUES

('Garcia', 'Pierre','23-05-1998','Homme','46 rue de la licorne', '13800','Istres','FRA'),
('Dupont','Marie', '15-04-1985','Femme', '123 Rue des Roses','10115', 'Berlin','DEU'),
('Santos','Gabriela','30-08-1980','Femme', 'Avenida Paulista 123', '01310-000', 'São Paulo','BRA'),
('Hakkinen','Juha', '10-08-1987', 'Homme', '456 Mannerheimintie', '00100','Helsinki', 'FIN'),
('Rodriguez','Carlos','05-12-1990','Homme','789 Avenida de Mayo','C1084AAA','Buenos Aires','ARG'),
('Kovač', 'Ana','15-03-1985','Femme','Ilica 345','10000','Zagreb','HRV'),
('Morales','Juan','28-09-1992','Homme','Calle Sucre, 567','110001','La Paz','BOL'),
('Bouazizi','Amina','21-05-1983','Femme','123 Rue de la Liberté','16000','Alger','DZA'),
('Van Damme','Jean','20-11-1980','Homme','Avenue des Arts, 890','1040','Bruxelles','BEL'),
('Nasser','Fatima','14-07-1984','Femme','123 Rue du Nil','11511','Le Caire','EGY');

SELECT * FROM contacts ;

CREATE TABLE IF NOT EXISTS telephone (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    id_contact INT,
    numero VARCHAR(50) NOT NULL,
    type BYTE, 
    FOREIGN KEY (id_contact) REFERENCES  contacts(id)
);

INSERT INTO telephone (id_contact, numero, type) VALUES
(1,'0650123456',1),
(2,'0670891234',2),
(3,'0645678901',1),
(4,'0665432109',2),
(5,'0698765432',1),
(6,'0632109876',2),
(7,'0687654321',1),
(8,'0612345678',2),
(9,'0609876543',1),
(10,'0623456789',2);

SELECT * FROM telephone

DROP TABLE pays;
DROP TABLE contacts;
DROP TABLE telephone;