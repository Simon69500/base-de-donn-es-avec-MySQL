/* Insertions des données dans les tableaux  */

-- insertion des marques de boissons dans le tableau marques
INSERT INTO marques ( nom_marque) 
VALUES 
('Coca-cola'),
('Cristaline'),
('Monster'),
('Pepsico');

-- insertion des boissons dans le tableau boissons
INSERT INTO boissons ( nom_boisson, id_marques) 
VALUES 
('Coca-cola zéro',1),
('Coca-cola original',1),
('Fanta citron',1),
('Fanta orange',1),
('Capri-sun',1),
('Pepsi',4),
('Pepsi Max Zéro',4),
('Lipton zéro citron',4),
('Lipton Peach',4),
('Monster energy ultra gold',3),
('Monster energy ultra blue',3),
('Eau de source',2);

-- insertion de des Foccacia dans le tableau foccacia
INSERT INTO foccacia (nom_foccacia, prix)
VALUES
('Mozaccia','9.80'),         -- id_foccacia = 1
('Gorgonzollaccia','10.80'), -- id_foccacia = 2
('Raclaccia','8.90'),        -- id_foccacia = 3
('Emmentalaccia','9.80'),    -- id_foccacia = 4
('Tradizione','8.90'),       -- id_foccacia = 5
('Hawaienne','11.20'),       -- id_foccacia = 6
('Américaine','10.80'),      -- id_foccacia = 7
('Paysanne','12.80');        -- id_foccacia = 8

-- insertion des ingredients dans le tableau ingredients
INSERT INTO ingredients (nom_ingredient)
VALUES
('Ail'),            -- id_ingredient = 1
('Ananas'),         -- id_ingredient = 2
('Artichaut'),      -- id_ingredient = 3
('Bacon'),          -- id_ingredient = 4
('Base Tomate'),    -- id_ingredient = 5
('Base crème'),     -- id_ingredient = 6
('Champignon'),     -- id_ingredient = 7
('Chevre'),         -- id_ingredient = 8
('Cresson'),        -- id_ingredient = 9
('Emmental'),       -- id_ingredient = 10
('Gorgonzola'),     -- id_ingredient = 11
('Jambon cuit'),    -- id_ingredient = 12
('Jambon fumé'),    -- id_ingredient = 13
('Oeuf'),           -- id_ingredient = 14
('Oignon'),         -- id_ingredient = 15
('Olive noire'),    -- id_ingredient = 16
('Olive verte'),    -- id_ingredient = 17
('Parmesan'),       -- id_ingredient = 18
('Piment'),         -- id_ingredient = 19
('Poivre'),         -- id_ingredient = 20
('Pomme de terre'), -- id_ingredient = 21
('Raclette'),       -- id_ingredient = 22
('Salami'),         -- id_ingredient = 23
('Tomate cerise'),  -- id_ingredient = 24
('Mozarella');      -- id_ingredient = 25



/* Partie Insertion de données des ingredients-Foccacia */

-- Mozaccia (id_foccacia = 1)
INSERT INTO quantites (id_foccacia, id_ingredient) 
VALUES
(1, 5),   
(1, 25),    
(1, 9),     
(1, 13),    
(1, 1),     
(1, 3),     
(1, 7),    
(1, 18),  
(1, 20),     
(1, 16);   

-- Gorgonzollaccia (id_foccacia = 2)
INSERT INTO quantites (id_foccacia, id_ingredient) 
VALUES
(2, 5),   
(2, 11),    
(2, 9),     
(2, 1),    
(2, 7),     
(2, 18),     
(2, 20),    
(2, 16);

-- Raclaccia (id_foccacia = 3)
INSERT INTO quantites (id_foccacia, id_ingredient) 
VALUES
(3, 5),   
(3, 22),    
(3, 9),     
(3, 1),    
(3, 7),     
(3, 18),     
(3, 20);   

-- Emmentalaccia (id_foccacia = 4)
INSERT INTO quantites (id_foccacia, id_ingredient) 
VALUES
(4, 6),   
(4, 10),    
(4, 9),     
(4, 7),    
(4, 18),     
(4, 20),     
(4, 15);    

-- Tradizione (id_focaccia = 5)
INSERT INTO quantites (id_foccacia, id_ingredient, quantite) 
VALUES
(5, 5, NULL),   
(5, 25, NULL),    
(5, 9, NULL),     
(5, 12, NULL),    
(5, 7, 80),     
(5, 18, NULL),     
(5, 20, NULL),    
(5, 16,10),
(5,17,10);

-- Hawaienne (id_foccacia = 6)
INSERT INTO quantites (id_foccacia, id_ingredient) 
VALUES
(6, 5),   
(6, 25),    
(6, 9),     
(6, 4),    
(6, 2),     
(6, 19),     
(6, 18),    
(6, 20),
(6,16);

-- Américaine (id_foccacia = 7)
INSERT INTO quantites (id_foccacia, id_ingredient, quantite) 
VALUES
(7, 5, NULL),   
(7, 25, NULL),    
(7, 9, NULL),     
(7, 4, NULL),    
(7, 21,40),     
(7, 18, NULL),     
(7, 20, NULL),    
(7, 16, NULL);

-- Paysanne (id_focaccia = 8)
INSERT INTO quantites (id_foccacia, id_ingredient) 
VALUES
(8, 6),   
(8, 8),    
(8, 9),     
(8, 21),    
(8, 13),     
(8, 1),     
(8, 3),    
(8, 7),
(8, 18),
(8, 20),
(8, 16),
(8, 14);

