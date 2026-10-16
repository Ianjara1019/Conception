-- afficher les plats du plus cher au moins cher
SELECT nom, prix FROM plat ORDER BY prix desc;

-- nombre de plat par categorie
SELECT c.libelle, COUNT(p.id) as nombre_plats FROM plat p JOIN categorie c ON p.id_categorie = c.id GROUP BY c.libelle;