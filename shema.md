## Tables:
- plat (**id**, nom, prix, #id_categorie)
- categorie (**id**, libelle)
- commande (**id**, daty, #id_client?)
- ligne_commande(**#id_commande**, **#id_plat**, quantite)
- client (**id**, nom, prenom)

### Réponses aux questions:
##### **Etape 1**: J'ai utilisé "INTEGER" pour le prix.

##### **Etape 2**: Il n'est pas pratique de'ajouter une colonne "categorie" dans la table "plat" puisque un plat pourrait avoir plusieurs categories.

##### **Etape 3**: J'ai placé la quantité dans la table ligne_commande

#### **Etape 4**: Non elle n'est pas NOT NULL. Poour ne pas perdre de commande j'ai utilisé 'Left Join'