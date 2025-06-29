-- Créer la base de données
CREATE DATABASE IF NOT EXISTS univ_scolarite;

-- Utiliser la base
USE univ_scolarite;

-- Table des étudiants
CREATE TABLE IF NOT EXISTS etudiants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(100),
    date_naissance DATE
);

-- Table des cours
CREATE TABLE IF NOT EXISTS cours (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_cours VARCHAR(100),
    code_cours VARCHAR(10),
    enseignant VARCHAR(100)
);

-- Table des inscriptions
CREATE TABLE IF NOT EXISTS inscriptions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    etudiant_id INT,
    cours_id INT,
    date_inscription DATE,
    FOREIGN KEY (etudiant_id) REFERENCES etudiants(id),
    FOREIGN KEY (cours_id) REFERENCES cours(id)
);

-- Insérer des étudiants
INSERT INTO etudiants (nom, prenom, email, date_naissance) VALUES
('Diallo', 'Aminata', 'aminata.diallo@univ.edu', '2001-05-10'),
('Sow', 'Ibrahima', 'ibrahima.sow@univ.edu', '2000-11-22'),
('Ba', 'Fatou', 'fatou.ba@univ.edu', '2002-03-15');

-- Insérer des cours
INSERT INTO cours (nom_cours, code_cours, enseignant) VALUES
('Mathématiques Générales', 'MTH101', 'Dr. Kane'),
('Programmation Web', 'INF203', 'Mme. Ndiaye'),
('Économie', 'ECO150', 'M. Sy');

-- Insérer des inscriptions
INSERT INTO inscriptions (etudiant_id, cours_id, date_inscription) VALUES
(1, 1, '2024-10-01'),
(2, 2, '2024-10-02'),
(3, 1, '2024-10-03'),
(1, 3, '2024-10-05');
