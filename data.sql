-----------------------create database-----------------
create database brief5;
-----------------------create tableau -----------------
create table organisateur(
     id int primary key auto-increment ,
    nom varchar(20),
    prenom varchar(20),
    email varchar(20),
    tel int,
);
create table sponseur(
    id int primary key auto-increment ,
    nom varchar(20),
    prenom varchar(20),
    email varchar(20),
    tel int,

);
create table participons (
    id int primary key auto-increment ,
    nom varchar(20),
    prenom varchar(20),
    email varchar(20),
    tel int,

);
create table lieu(
    id int primary key auto-increment ,
    nom varchar(20),
    paye varchar(20),
    
);
create table evenement (
    id int primary key auto-increment ,
    nom varchar(20),
    activete varchar(20) ,
    lieu-id int ,
    FOREIGN KEY (lieu-id ) REFERENCES lieu (id),
);

create table partecipations(
    id int primary key auto-increment ,
    participons -id int ,
    FOREIGN KEY (participons -id ) REFERENCES participons (id),
    evenement -id int ,
    FOREIGN KEY (evenement -id) REFERENCES  evenement(id),
);
create table organisation(
    id int primary key auto-increment ,
    evenement -id int ,
    FOREIGN KEY (evenement -id) REFERENCES  evenement(id),
    organisateur -id int ,
    FOREIGN KEY (organisateur -id) REFERENCES organisateur (id),
);
create table sponsorisation(
    id int primary key auto-increment ,
    evenement -id int ,
    FOREIGN KEY (evenement -id) REFERENCES  evenement(id),
    sponseur -id int ,
    FOREIGN KEY (sponseur-id) REFERENCES sponseur(id),
);


----------------------------insertion des données---------------------------------
-----------------------------Insertion de données dans la table organisateur------------------
INSERT INTO organisateur (nom, prenom, email, tel)
VALUES
  ('salim', 'bouhamide', 'slima@email.com', 123456789),
  ('zineb', 'elglioui', 'zineb@email.com', 987654321);

--------------------------- Insertion de données dans la table sponseur--------------------------
INSERT INTO sponseur (nom, prenom, email, tel)
VALUES
  ('fatima zahra ', 'elglioui', 'elglioui@email.com', 555123456),
  ('oussama ', 'belm', 'oussama@email.com', 987112233);

--------------------------- Insertion de données dans la table participons-----------------------
INSERT INTO participons (nom, prenom, email, tel)
VALUES
  ( 'ibtissam', 'alhani', 'ibtessam@email.com', 444987654),
  ('tayeb', 'souini', 'suini@email.com', 789456123);

---------------------------- Insertion de données dans la table lieu------------------------
INSERT INTO lieu (nom, pays)
VALUES
  ('Salle A', 'youcode'),
  ('salle 3 igli', 'Canada');

--------------------------- Insertion de données dans la table evenement---------------------
INSERT INTO evenement (nom, activite, lieu_id)
VALUES
  ('Conférence Tech', 'workshop in js', 1),
  ('Atelier Marketing', 'workshop in marketing', 2);

-- Insertion de données dans la table participations
INSERT INTO participations (participant_id, evenement_id)
VALUES
  (1, 1),  ------------------  ibtissam participe à la Conférence Tech--------------
  (2, 1),  -- ------------------------tayebparticipe également à la Conférence Tech------------------
  

-- Insertion de données dans la table organisation
INSERT INTO organisation (evenement_id, organisateur_id)
VALUES
  (1, 1),  ------------------------La Conférence Tech est organisée par salima -----------------------
  (2, 2);  ------------------------L'Atelier Marketing est organisé par zineb-------------------------

-- Insertion de données dans la table sponsorisation
INSERT INTO sponsorisation (evenement_id, sponsor_id)
VALUES
  (1, 1),  -----------------------------La Conférence Tech est sponsorisée par fatimazahra elglioui------------------------------
  (2, 2);  ------------------------------- L'Atelier Marketing est sponsorisé par Tech Solutions--------------------------------------------;

 ---------------------selection------------------------------