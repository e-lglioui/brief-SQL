-----------------------create database-----------------
create database brief5;
-----------------------create tableau -----------------
create table auteur(
    id int primary key auto-increment ,
    nom varchar(20),
    prenom varchar(20),
    naissance date ,
);
create table livre(
    id int primary key auto-increment ,
    nom varchar(20),
    idition int ,
    auteur-id int ,
    FOREIGN KEY (auteur-id ) REFERENCES auteur(id),
);
----------------------------insertion des données-----------
INSERT INTO auteur (nom , prenom , naissance ) VALUES
 ('Rébecca', 'Armand','2000-06-3'),
 ('Aimée', 'Hebert','2000-06-3'),
 ('Marielle', 'Ribeiro','2000-06-3'),
 ('Hilaire', 'Savary','2000-06-3');

INSERT INTO livre (nom , idition , auteur-id ) VALUES
 ('Armand',2000,1),
 ('Aimée',206,2),
 ('Marielle', 2063,3),
 ('Hilaire',20653,4);
 ---------------------selection---------------------