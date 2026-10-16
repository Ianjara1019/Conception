-- afficher les plats du plus cher au moins cher
SELECT nom, prix FROM plat ORDER BY prix desc;

-- nombre de plat par categorie
SELECT c.libelle, COUNT(p.id) as nombre_plats FROM plat p JOIN categorie c ON p.id_categorie = c.id GROUP BY c.libelle;

-- montant total des commandes de chaque commande
SELECT c.id, SUM(p.prix * c.quantite) as montant_total FROM commande c JOIN plat p ON c.id_plat = p.id GROUP BY c.id;