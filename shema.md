## Tables:
- plat (**id**, nom, prix, #id_categorie)
- categorie (**id**, libelle)
- commande (**id**, daty, #id_client?, #id_serveur, #id_table?)
- ligne_commande(**#id_commande**, **#id_plat**, quantite)
- client (**id**, nom, prenom)
- table_restaurant (**id**, numero)
- serveur (**id**, nom, prenom)

### Réponses aux questions:
##### **Etape 1**: J'ai utilisé "INTEGER" pour le prix.

##### **Etape 2**: Il n'est pas pratique de'ajouter une colonne "categorie" dans la table "plat" puisque un plat pourrait avoir plusieurs categories.

##### **Etape 3**: J'ai placé la quantité dans la table ligne_commande

##### **Etape 4**: Non elle n'est pas NOT NULL. Poour ne pas perdre de commande j'ai utilisé 'Left Join'

##### **Etape 5**: On ne peut pas utiliser "table" comme nom de table en SQL puisque c'est deja une syntaxe existante qu'on ne peut plus utiliser