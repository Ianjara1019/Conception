CREATE TABLE IF NOT EXISTS serveur(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARcHAR(100)
);

CREATE TABLE IF NOT EXISTS table_restaurant(
    id SERIAL PRIMARY KEY,
    numero_table INTEGER
);

ALTER TABLE commande ADD COLUMN id_serveur INTEGER REFERENCES serveur(id), ADD COLUMN id_table INTEGER REFERENCES table_restaurant(id);

INSERT INTO table_restaurant(numero_table) VALUES(1),(2),(3),(4);

INSERT INTO serveur(nom, prenom) VALUES('Rakoto', 'Njaka'),('Rasoa', 'Lalao');

UPDATE commande SET id_serveur = 1, id_table = 1 WHERE id = 1;
UPDATE commande SET id_serveur = 1, id_table = 2 WHERE id = 2;
UPDATE commande SET id_serveur = 2, id_table = 3 WHERE id = 3;
UPDATE commande SET id_serveur = 2, id_table = 4 WHERE id = 4;
UPDATE commande SET id_serveur = 2, id_table = 4 WHERE id = 5;
UPDATE commande SET id_serveur = 1, id_table = 4 WHERE id = 6;
UPDATE commande SET id_serveur = 2, id_table = 4 WHERE id = 7;

ALTER TABLE commande ALTER COLUMN id_serveur SET NOT NULL;