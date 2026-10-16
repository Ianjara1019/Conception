CREATE DATABASE gargote;
USE gargote;

CREATE TABLE plat(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    prix INTEGER
);

INSERT INTO plat(nom, prix) VALUES('Romazava', 7000),('Ravitoto', 8000),('Akoho sy voanio', 8500), ('Mi sao', 6000), ('Soupe chinoise', 5000), ('Mofo gasy(les 4)', 1000), ('Ranon ampango', 500);