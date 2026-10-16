-- afficher les plats du plus cher au moins cher
SELECT nom, prix FROM plat ORDER BY prix desc;

-- nombre de plat par categorie
SELECT c.libelle, COUNT(p.id) as nombre_plats FROM plat p JOIN categorie c ON p.id_categorie = c.id GROUP BY c.libelle;

-- montant total des commandes de chaque commande
SELECT lc.id_commande, SUM(lc.quantite * p.prix) as montant_total FROM ligne_commande lc JOIN plat p ON lc.id_plat = p.id GROUP BY lc.id_commande;

-- liste des commandes avec le nom du client , en affichant "client de passage" quand il n'y en a pas
SELECT lc.id_commande, COALESCE(cl.nom || ' ' || cl.prenom, 'client de passage') as nom_client FROM ligne_commande lc LEFT JOIN commande c ON lc.id_commande = c.id LEFT JOIN client cl ON c.id_client = cl.id GROUP BY lc.id_commande, cl.nom, cl.prenom;