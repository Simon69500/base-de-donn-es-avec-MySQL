/* Les requêtes TEST  */

/* 
Vous créerez un script qui regroupe ces 10 requêtes. Pour chaque requête, vous indiquerez :
• Le numéro et le but de la requête,
• Le code SQL de la requête,
• Le résultat attendu,
• Le résultat obtenu,
• Vous commenterez les éventuels écarts entre le résultat attendu et le résultat obtenu. 
*/


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 1. Afficher la liste des noms des foccacias par ordre alphabétique croissant

--  Le code SQL de la requête :
SELECT nom_foccacia FROM foccacia ORDER BY nom_foccacia ASC;

/*
-- Le résultat attendu :
| --------------- |
| AMÉRICAINE      |
| EMMENTALACCIA   |
| GORGONZOLLACCIA |
| HAWAIENNE       |
| MOZACCIA        |
| PAYSANNE        |
| RACLACCIA       |
| TRADIZIONE      |
*/

-- Le résultat obtenu : Affichage des 8 noms de foccacia, triés par ordre alphabétique croissant, exécuté en 0,0003 seconde.
-- commentaire : Le résultat correspond exactement à ce qui est attendu. Tous les noms sont bien présents et correctement ordonnés, ce qui confirme que la requête fonctionne parfaitement.


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 2. Afficher le nombre total d'ingrédients

--  Le code SQL de la requête :
SELECT COUNT(*) FROM ingredients;

-- Le résultat attendu : est le 25 ingrédients

-- Le résultat obtenu : La requête a retourné avec succès le total de 25 ingrédients.
-- commentaire : Le résultat est conforme à l'attente, affichant le nombre total exact d’ingrédients. La requête remplit donc son objectif sans aucune anomalie.


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 3. Afficher le prix moyen des foccacias

--  Le code SQL de la requête :
SELECT AVG(prix) FROM foccacia;

-- Le résultat attendu : est le prix moyen des foccacias de 10.375000

-- Le résultat obtenu : Un seul résultat affiché, correspondant au prix moyen calculé, en 0,0003 seconde.,
-- commentaire : La moyenne affichée (10.375000) est correcte. Le calcul correspond à ce qui est attendu, donc la requête fonctionne parfaitement.


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 4. Afficher la liste des boissons avec leur marque, triée par nom de boisson

--  Le code SQL de la requête :
SELECT b.nom_boisson, m.nom_marque 
FROM boissons b
JOIN marques m ON b.id_marques = m.id_marques
ORDER BY nom_boisson ASC;

/*
-- Le résultat attendu :
| nom\_boisson              | nom\_marque |
| ------------------------- | ----------- |
| Capri-sun                 | Coca-cola   |
| Coca-cola original        | Coca-cola   |
| Coca-cola zéro            | Coca-cola   |
| Eau de source             | Cristaline  |
| Fanta citron              | Coca-cola   |
| Fanta orange              | Coca-cola   |
| Lipton Peach              | Pepsico     |
| Lipton zéro citron        | Pepsico     |
| Monster energy ultra blue | Monster     |
| Monster energy ultra gold | Monster     |
| Pepsi                     | Pepsico     |
| Pepsi Max Zéro            | Pepsico     |
*/

-- Le résultat obtenu : Affichage des 12 lignes attendues, triées par nom de boisson, en 0,0011 seconde.
-- commentaire : La liste des boissons et des marques est complète et correctement ordonnée. Le résultat est en totale adéquation avec la demande, la requête est donc validée.


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 5. Afficher la liste des ingrédients pour une Raclaccia

--  Le code SQL de la requête :
SELECT i.nom_ingredient 
FROM foccacia f
JOIN quantites q ON f.id_foccacia = q.id_foccacia
JOIN ingredients i ON q.id_ingredient = i.id_ingredient
WHERE f.nom_foccacia = 'Raclaccia';

/*
-- Le résultat attendu :
nom_ingredient = 
Ail
Base Tomate
Champignon
Cresson
Parmesan
Poivre
Raclette
*/

-- Le résultat obtenu : Affichage des 7 ingrédients correspondant à la Raclaccia, obtenu en 0,0005 seconde.
-- commentaire : Les ingrédients listés sont conformes à ceux attendus pour cette foccacia. La requête fonctionne correctement en renvoyant le détail attendu.


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 6. Afficher le nom et le nombre d'ingrédients pour chaque foccacia

--  Le code SQL de la requête :
SELECT f.nom_foccacia, COUNT(q.id_ingredient) AS nombre_ingredients
FROM foccacia f
JOIN quantites q ON f.id_foccacia = q.id_foccacia
GROUP BY f.nom_foccacia;

/*
-- Le résultat attendu :

| nom\_foccacia   | nombre\_ingredients |
| --------------- | ------------------- |
| Américaine      | 8                   |
| Emmentalaccia   | 7                   |
| Gorgonzollaccia | 8                   |
| Hawaienne       | 9                   |
| Mozaccia        | 10                  |
| Paysanne        | 12                  |
| Raclaccia       | 7                   |
| Tradizione      | 9                   |
*/

-- Le résultat obtenu : Affichage des 8 foccacias avec leur nombre d’ingrédients respectif, en 0,0005 seconde.
-- commentaire : Le comptage des ingrédients par foccacia est exact, ce qui correspond précisément au résultat attendu. La requête est efficace et correcte.


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 7. Afficher le nom de la foccacia qui a le plus d'ingrédients

--  Le code SQL de la requête :
SELECT f.nom_foccacia, COUNT(q.id_ingredient) AS nb_ingredients
FROM foccacia f
JOIN quantites q ON f.id_foccacia = q.id_foccacia
GROUP BY f.id_foccacia
ORDER BY nb_ingredients DESC
LIMIT 1;


-- Le résultat attendu : est la Paysanne avec 12 ingrédients

-- Le résultat obtenu : Exécution réussie, affichant la foccacia "Paysanne" avec 12 ingrédients.
-- commentaire : Le résultat correspond parfaitement à l’attendu. La requête identifie correctement la foccacia avec le plus grand nombre d’ingrédients.


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 8. Afficher la liste des foccacia qui contiennent de l'ail

--  Le code SQL de la requête :
SELECT f.nom_foccacia 
FROM foccacia f
JOIN quantites q ON f.id_foccacia = q.id_foccacia
JOIN ingredients i ON q.id_ingredient = i.id_ingredient
WHERE i.id_ingredient = 1;

/*
-- Le résultat attendu :
nom_foccacia =
Mozaccia
Gorgonzollaccia
Raclaccia
Paysanne
*/

-- Le résultat obtenu :Affichage des 4 foccacias contenant de l’ail, obtenu en 0,0006 seconde.
-- commentaire : Le résultat est conforme à la liste attendue. La requête filtre correctement les foccacias contenant l’ingrédient « ail ».


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 9. Afficher la liste des ingrédients inutilisés

--  Le code SQL de la requête :
SELECT i.nom_ingredient 
FROM ingredients i
LEFT JOIN quantites q ON i.id_ingredient = q.id_ingredient
WHERE q.id_foccacia IS NULL;

/*
-- Le résultat attendu :

nom_ingredient =
Salami
Tomate cerise
*/

-- Le résultat obtenu : Affichage de 2 ingrédients non utilisés, en 0,0006 seconde.
-- commentaire : Les ingrédients affichés sont bien ceux qui ne sont associés à aucune foccacia, conformément à la demande. La requête remplit donc son rôle.


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 10. Afficher la liste des foccacia qui n'ont pas de champignons

--  Le code SQL de la requête :
SELECT f.nom_foccacia 
FROM foccacia f
WHERE f.id_foccacia NOT IN (
    SELECT q.id_foccacia
    FROM quantites q 
    WHERE q.id_ingredient = 7
);

/*
-- Le résultat attendu :
nom_foccacia =
Hawaienne
Américaine
*/

-- Le résultat obtenu : Affichage de 2 foccacias sans champignons, exécuté en 0,0008 seconde.


-- commentaire : Les foccacias listés correspondent bien à ceux qui ne contiennent pas de champignons, conformément à l’attendu. La requête fonctionne correctement.