-- Ajout de la 2me table
CREATE Table cars
(
id_Cars INT PRIMARY KEY NOT NULL,
marque VARCHAR(20),
modeles  VARCHAR(20),
prix FLOAT,
mise_en_circulation DATE,
couleur VARCHAR(20)
);

SELECT*FROM cars;

INSERT INTO cars
VALUES(1,'audi','rs6',50000, '2019-01-01' ,'rouge'),(2,'citroen','cactus',15000, '2019-01-01' ,'vert'),(3,'bmw','serie 7',107000, '2021-01-01' ,'blanc'),(4,'mercedes','hybride',520000, '2022-01-01' ,'bleu');

Alter table personnes add column id_voiture int;

select * from personnes;

UPDATE personnes set id_voiture = 1 where id = 1;
UPDATE personnes set id_voiture = 2 where id = 3;
UPDATE personnes set id_voiture = 3 where id = 5;
UPDATE personnes set id_voiture = 4 where id = 4;