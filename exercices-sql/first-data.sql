/* Un bloc de commentaire
*/

--une ligne de commentaire

/* Create a table called Personnes */
CREATE TABLE Personnes(Id integer PRIMARY KEY, prenom text, age int, job text );

/* Create few records in this table */
INSERT INTO Personnes VALUES(1,'Tom', 28 , 'Cuisinier');
INSERT INTO Personnes VALUES(2,'Lucy', 18 , 'Etudiante');
INSERT INTO Personnes VALUES(3,'Frank', 31 , 'Cariste');
INSERT INTO Personnes VALUES(4,'Jane',  21 , 'Musicienne' );
INSERT INTO Personnes VALUES(5,'Robert', 54 , 'Chauffeur');

-- 1. Afficher les toutes les colonnes de la table personne
SELECT * from Personnes;

-- 2. Afficher juste le prénom
SELECT prenom from personnes;

-- 3 affichez le prenom et l'age
select prenom, age from personnes;

-- 4 Affichez les informations de Lucy
select * from personnes where prenom = 'Lucy';

-- 5 affichez le prenom et l'age du Cuisinier
select prenom, age from personnes where job = 'Cuisinier';

-- 6 Affichez les personnes qui ne sont pas Cariste
SELECT * from personnes where job != 'Cariste';

-- 7 Affichez les personnes de plus de 30 ans
SELECT * from personnes where age > 30;

-- 8 Affichez les personnes de moins de 40 ans
SELECT*from personnes where age < '40';

-- 9 Afficher la personne de moins de 30 ans et qui est musicienne
SELECT * FROM personnes WHERE age <30 AND job ='Musicienne';

-- 10 Afficher le Cuisinier et le Chauffeur
SELECT * FROM personnes where job='Cuisinier' OR job ='Chauffeur';

--11 Affichez les personnes de moins de 40 ans et qui ont un id > 2
select * from personnes where age < 40 and id > 2;

-- 12. trouvez les prénoms qui contiennent un 'a'
select prenom from personnes where prenom like '%a%';

-- 13. Trouvez les métiers qui contiennent à la fois un 'e' et un 'r'
select * from personnes where job like '%e%' and job like '%r%';

-- Bonus Affichez les personnes qui ont un métier qui contient au moins 2 voyelles identiques trié par ordre alphabétique de prénom
select * from personnes 
where job like '%e%e%' 
or job like '%E%e%' 
or job like '%a%a%'
or job like '%i%i%'
or job like '%o%o%'
or job like '%u%u%'
or job like '%y%y%'
order by prenom;

-- 14. Affichez le Cariste, le Cuisinier et l'Etudiante
select * from personnes where job in ('Cariste','Cuisinier', 'Etudiante');

-- 15. affichez les personnes entre 20 et 40 ans
select * from personnes where age between 20 and 40;

-- 16. Affichez toute la table par ordre croissant d'age
select * from personnes order by age;

-- 17. Affichez les personnes qui ne sont pas compris entre 20 et 40 ans par ordre décroissant d'age
select * from personnes where age not between 20 and 40 order by age desc;

-- 18 Affichez la table Cars
select * from cars;

-- Affichez les 2 tables
select * from personnes join cars on id_cars = id_voiture

-- 19 Affichez la personne qui n'a pas de voiture
select * from personnes where id_voiture is null

--20 Affichez ceux qui en ont une
select * from personnes where id_voiture is not null;

-- 21 Cherchez les voitures qui ont une mise circulation plus ancienne que la voiture de Robert
select marque from cars
where mise_en_circulation <
(select mise_en_circulation 
from personnes join cars on id_voiture = id_cars
where prenom = 'Robert');

-- 22. comptez le nombre de voiture mises en circulation de 2019 à 2021
select count(*) from cars where mise_en_circulation between '2019-01-01' and '2021-01-01';

-- 23 Affichez la moyenne des prix des véhicules
select avg(prix) from cars;

-- 24 Affichez la personne la plus jeune
select * from personnes where age = (select min(age) from personnes);
-- 25 Affichez la voiture la plus récente
select * from cars where mise_en_circulation = (select max(mise_en_circulation) from cars);

-- 26 Calculez l'écart d'age en entre la personne la plus jeune et la personne la plus agée
select max(age) - min(age) from personnes;

-- creaction table loisirs
CREATE Table Loisirs (
    id int PRIMARY key NOT NULL,
    nom VARCHAR(20),
    frequence_semaine float
);

insert into loisirs values
(1,'foot', 2.5),
(2,'voyage', 5),
(3,'lecture', 4.5),
(4,'jeux vidéo', 7),
(5,'cinema', 1);

alter table personnes add column id_loisir int;

UPDATE personnes set id_loisir = 2
where prenom = 'Tom';
UPDATE personnes set id_loisir = 1
where prenom = 'Lucy';
UPDATE personnes set id_loisir = 3
where prenom = 'Frank';
UPDATE personnes set id_loisir = 4
where prenom = 'Robert';
UPDATE personnes set id_loisir = 5
where prenom = 'Jane';

select * from personnes;
