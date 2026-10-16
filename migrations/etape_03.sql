CREATE TABLE commande(
    id SERIAL PRIMARY KEY,
    daty DATE,
    id_plat INTEGER REFERENCES plat(id),
    quantite INTEGER DEFAULT 1
);

INSERT INTO commande(daty, id_plat, quantite) VALUES('2024-06-01', 1, 2),('2024-06-01', 2, 1),('2024-06-02', 3, 3),('2024-06-02', 4, 1),('2024-06-03', 5, 2),('2024-06-03', 6, 1),('2024-06-04', 7, 4);