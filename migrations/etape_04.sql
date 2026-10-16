CREATE TABLE IF NOT EXISTS client(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS ligne_commande(
    id SERIAL PRIMARY KEY,
    id_commande INTEGER REFERENCES commande(id),
    id_plat INTEGER REFERENCES plat(id),
    quantite INTEGER DEFAULT 1
);

ALTER TABLE commande DROP COLUMN id_plat, DROP COLUMN quantite, ADD COLUMN id_client INTEGER REFERENCES client(id);

INSERT INTO client(nom, prenom) VALUES('Rakoto', 'Jean'),('Rabe', 'Marie'),('Andrianina', 'Hery');
INSERT INTO ligne_commande(id_commande, id_plat, quantite) VALUES(1, 1, 2),(1, 2, 1),(2, 3, 3),(2, 4, 1),(3, 5, 2),(3, 6, 1),(4, 7, 4);