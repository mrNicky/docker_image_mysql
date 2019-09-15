CREATE DATABASE company;
USE company;

CREATE TABLE artiste
(id_artiste INTEGER NOT NULL,
prenom TEXT,
nom TEXT,
PRIMARY KEY (id_artiste));

CREATE TABLE films
(id_film INTEGER NOT NULL,
titre_film TEXT,
annee_film INTEGER NOT NULL,
id_real_film INTEGER NOT NULL,
PRIMARY KEY (id_film));
#FOREIGN KEY (id_real_film) REFERENCES artiste(id_artiste)) ENGINE=INNODB;

CREATE TABLE roles
(id_film_role INTEGER NOT NULL,
role TEXT,
id_artiste_role INTEGER NOT NULL,
PRIMARY KEY (id_artiste_role));
#FOREIGN KEY (id_artiste_role) REFERENCES artiste(id_artiste)) ENGINE=INNODB;

INSERT INTO artiste (id_artiste, prenom, nom) VALUES (11, 'john', 'travolta');
INSERT INTO artiste (id_artiste, prenom, nom) VALUES (17, 'sam', 'fisher');
INSERT INTO artiste (id_artiste, prenom, nom) VALUES (22, 'bruce', 'willis');
INSERT INTO artiste (id_artiste, prenom, nom) VALUES (37, 'quentin', 'tarantino');
INSERT INTO artiste (id_artiste, prenom, nom) VALUES (167, 'robert', 'de niro');
INSERT INTO artiste (id_artiste, prenom, nom) VALUES (168, 'pam', 'grier');

INSERT INTO films (id_film, titre_film, annee_film, id_real_film) VALUES (17, 'pulp fiction', 1994, 37);
INSERT INTO films (id_film, titre_film, annee_film, id_real_film) VALUES (37, 'jackie brown', 1997, 57);

INSERT INTO roles (id_artiste_role, role, id_film_role) VALUES (11, 'vincent', 17);
INSERT INTO roles (id_artiste_role, role, id_film_role) VALUES (27, 'butch', 17);
INSERT INTO roles (id_artiste_role, role, id_film_role) VALUES (37, 'jimmy', 17);


