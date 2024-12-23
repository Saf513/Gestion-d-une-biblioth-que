
--creation de base de donnee
CREATE DATABASE Bibliotheque;

--creation de tableau de l'utilisateur
CREATE TABLE Utilisateur (
    ID_utilisateur INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(100),
    Prenom VARCHAR(100),
    Adresse VARCHAR(255),
    Email VARCHAR(100) UNIQUE,
    Numero_telephone VARCHAR(15),
    role ENUM('user', 'admin') NOT NULL DEFAULT 'user'
);

--creation de tableau de categorie
CREATE TABLE Categorie (
    ID_categorie INT AUTO_INCREMENT PRIMARY KEY,
    Nom_categorie VARCHAR(100)
);

--creation de table de livre 
CREATE TABLE Livre (
    ID_livre INT AUTO_INCREMENT PRIMARY KEY,
    Titre VARCHAR(255),
    Auteur VARCHAR(100),
    Annee_publication YEAR,
    ID_categorie INT,
    FOREIGN KEY (ID_categorie) REFERENCES Categorie(ID_categorie)
);

--creation de table de empriente
CREATE TABLE Emprunt (
    ID_emprunt INT AUTO_INCREMENT PRIMARY KEY,          
    ID_utilisateur INT,                                 
    ID_livre INT,                                       
    Date_emprunt DATE,                                 
    Date_retour_prevue DATE,                          
    rendu BOOLEAN,                                     
    FOREIGN KEY (ID_utilisateur) REFERENCES Utilisateur(ID_utilisateur),  
    FOREIGN KEY (ID_livre) REFERENCES Livre(ID_livre)                 
);

--insertion dans le tableau de  utilisateur
INSERT INTO Utilisateur (Nom, Prenom, Adresse, Email, Numero_telephone, role)
VALUES 
('Dupont', 'Jean', '12 Rue de Paris', 'jean.dupont@email.com', '0123456789', 'user'),
('Martin', 'Marie', '34 Avenue des Champs', 'marie.martin@email.com', '0987654321', 'admin'),
('Lemoine', 'Pierre', '56 Boulevard St Michel', 'pierre.lemoine@email.com', '0147256893', 'user');

--insertion des categorie
INSERT INTO Categorie (Nom_categorie)
VALUES 
('Science'),
('Fiction'),
('Histoire'),
('Informatique'),
('Philosophie');


--insertion des livres 
INSERT INTO Livre (Titre, Auteur, Annee_publication, ID_categorie)
VALUES 
('Le Petit Prince', 'Antoine de Saint-Exupéry', 1943, 1),  
('1984', 'George Orwell', 1949, 2),  
('L’Histoire de France', 'Jean Dupont', 2010, 3), 
('Introduction à l’algorithmique', 'Pierre Lemoine', 2022, 4),  
('Le Monde de Sophie', 'Jostein Gaarder', 1991, 5);



--insertion des emprientes 
INSERT INTO Emprunt (ID_utilisateur, ID_livre, Date_emprunt, Date_retour_prevue, rendu)
VALUES (1, 1, '2024-12-20', '2025-01-20', FALSE);

INSERT INTO Emprunt (ID_utilisateur, ID_livre, Date_emprunt, Date_retour_prevue, rendu)
VALUES (2, 2, '2024-12-21', '2025-01-21', FALSE);

INSERT INTO Emprunt (ID_utilisateur, ID_livre, Date_emprunt, Date_retour_prevue, rendu)
VALUES (3, 3, '2024-12-22', '2025-01-22', FALSE);

INSERT INTO Emprunt (ID_utilisateur, ID_livre, Date_emprunt, Date_retour_prevue, rendu)
VALUES (1, 4, '2024-12-15', '2025-01-15', FALSE);

INSERT INTO Emprunt (ID_utilisateur, ID_livre, Date_emprunt, Date_retour_prevue, rendu)
VALUES (2, 5, '2024-12-10', '2025-01-10', TRUE);  git add .COMMENT




