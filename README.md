# Base de données – Le Tifosi

## Description
Ce projet consiste à concevoir et implémenter une base de données pour le restaurant de street-food italien “Le Tifosi”.  
L'objectif est de gérer les focaccias, les ingrédients, les boissons et les marques, et de permettre des requêtes analytiques pour exploiter les données.

## Technologies utilisées
- Base de données : MySQL
- Gestion des scripts SQL pour la création, le peuplement et la vérification des données
- Excel : pour le peuplement initial des données
- Git / GitHub pour le versioning

## Fonctionnalités principales
- Création du schéma de la base de données (`tifosi`) avec contraintes d’intégrité et valeurs uniques
- Peuplement de la base avec les fichiers de test fournis (`focaccia.xlsx`, `ingredient.xlsx`, `boisson.xlsx`, `marque.xlsx`)
- Exécution de 10 requêtes SQL pour vérifier la cohérence des données et obtenir des statistiques (liste des focaccias, prix moyen, ingrédients inutilisés, etc.)
- Documentation et commentaires détaillés pour chaque script

## Installation et utilisation
1. Cloner le dépôt :
```bash
git clone https://github.com/Simon69500/Tifosi_BDD.git
```
2. Se placer dans le dossier du projet :
   ```bash
   cd Tifosi_BDD
  ```
3. Importer le script de création de la base de données dans MySQL :
     ```bash
   source create_schema.sql;
  ```
4. Importer les données de test :
    ```bash
   source insert_data.sql;
  ```
5. Exécuter le script de vérification pour tester les requêtes :
    ```bash
   source requetes_test.sql;
  ```

## Contenu du dépôt
- create_schema.sql : script de création du schéma de la base de données
- insert_data.sql : script d’insertion des données de test
- requetes_test.sql : script exécutant les 10 requêtes de vérification
- README.md : documentation du projet

## Résultat attendu
- Base de données fonctionnelle et sécurisée
- Données correctement insérées et vérifiées
- Requêtes SQL testées et commentées
