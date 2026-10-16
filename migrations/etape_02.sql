CREATE TABLE OR REPLACE categorie(
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(50)
);

ALTER TABLE plat ADD COLUMN id_categorie INTEGER REFERENCES categorie(id);

INSERT INTO categorie VALUES(1, 'Plat malagasy'),(2, 'Plat chinois'), (3,'Soupe'), (4, 'Dessert et goûter'), (5, 'Boisson');

UPDATE plat SET id_categorie = 1 WHERE id = 1;
UPDATE plat SET id_categorie = 1 WHERE id = 2;
UPDATE plat SET id_categorie = 1 WHERE id = 3;
UPDATE plat SET id_categorie = 2 WHERE id = 4;
UPDATE plat SET id_categorie = 3 WHERE id = 5;
UPDATE plat SET id_categorie = 4 WHERE id = 6;
UPDATE plat SET id_categorie = 5 WHERE id = 7;

ALTER TABLE plat ALTER COLUMN id_categorie SET NOT NULL;