-------------------------------------------Étape 2----------------------------------------------------------------------------------------------------

-- CREATE TABLE users (
-- id INTEGER PRIMARY KEY,
-- firstname TEXT NOT NULL,
-- lastname TEXT NOT NULL,
-- email TEXT NOT NULL
-- );

-- CREATE TABLE edusign (
-- id INTEGER PRIMARY KEY AUTOINCREMENT,
-- firstname TEXT,
-- lastname TEXT,
-- email TEXT,
-- created_at DATETIME,
-- users_id INTEGER,
-- FOREIGN KEY (users_id) REFERENCES users(users_id)
-- );

-- INSERT INTO users (firstname, lastname, email) VALUES ('Ada', 'Lovelace', 'ada@test.fr');
-- INSERT INTO users (firstname, lastname, email) VALUES ('Beatrice', 'Worsley', 'bea@test.fr');
-- INSERT INTO users (firstname, lastname, email) VALUES ('Bella', 'Guerin', 'bella@test.fr');
-- INSERT INTO users (firstname, lastname, email) VALUES ('Barbara', 'Chase', 'barbara@test.fr');

-- INSERT INTO edusign (created_at, users_id) VALUES ('2024-12-11 09:30:00', 1);
-- INSERT INTO edusign (created_at, users_id) VALUES ('2024-12-11 09:30:00', 2);
-- INSERT INTO edusign (created_at, users_id) VALUES ('2024-12-11 09:30:00', 3);
-- INSERT INTO edusign (created_at, users_id) VALUES ('2024-12-11 09:30:00', 4);

-- UPDATE edusign
-- SET firstname = users.firstname
-- FROM users 
-- WHERE edusign.users_id = users.id;

-- UPDATE edusign
-- SET lastname = users.lastname, email = users.email
-- FROM users 
-- WHERE edusign.users_id = users.id;

-- ALTER TABLE edusign
-- DROP COLUMN firstname;

-- ALTER TABLE edusign
-- DROP COLUMN lastname;

-- ALTER TABLE edusign
-- DROP COLUMN email;

-----------------------------------Étape 3---------------------------------------------------------------------------------

-- Sélectionner toutes les lignes de la table users :
-- SELECT * FROM users;

-- Sélectionner uniquement la ligne où le prénom est Ada dans la table users :
-- SELECT * FROM users
-- WHERE firstname = 'Ada';

-- Sélectionner les lignes dont la première lettre du prénom est un B dans la table users :
-- SELECT * FROM users
-- WHERE firstname LIKE 'B%';

-- Compter le nombre de ligne qu’il y a dans la table users :
-- SELECT COUNT(*) FROM users;

-- Compter le nombre de ligne dont la première lettre du prénom est un B dans la table users :
-- SELECT COUNT(*) FROM users
-- WHERE firstname LIKE 'B%';

-- Afficher uniquement la colonne contenant le prénom de la table users :
-- SELECT firstname FROM users;


-----------------------------------Étape 3 Niveau Moyen---------------------------------------------------------------------------------

-- Insérer une ligne dans la table edusign qui correspond à la user Ada avec comme date de 
-- signature le 2024-05-30 09:30:00 :
-- Je crée une nouvelle utilisatrice car Ada a déjà des infos qui lui sont liées :
-- INSERT INTO users (firstname, lastname, email) VALUES ('Josianne', 'Balasko', 'josianne@test.fr');
-- INSERT INTO edusign (created_at, users_id) VALUES ('2024-05-30 09:30:00', 5);

-- Insérer une ligne dans la table edusign qui correspond à la user Bella avec comme date de signature 
-- le 2024-05-30 09:30:00 :
-- Je crée une nouvelle utilisatrice car Bella a déjà des infos qui lui sont liées :
-- INSERT INTO users (firstname, lastname, email) VALUES ('Céline', 'Dion', 'céline@test.fr');
-- INSERT INTO edusign (created_at, users_id) VALUES ('2024-05-30 09:30:00', 6);

-- Insérer toutes les lignes de la table users dans la table edusign avec pour date de signature le 
-- 2024-09-01 09:30:00 :
-- SELECT *
-- FROM users
-- INNER JOIN edusign on users.id = edusign.users_id
-- WHERE edusign.created_at = '2024-05-30 09:30:00';

-- Sélectionner toutes les lignes de la table edusign ordonnées par date de signature de la plus 
-- récente à la plus ancienne et par user_id ascendant :
-- SELECT * 
-- FROM edusign
-- ORDER BY created_at DESC, users_id ASC;

-----------------------------------Étape 3 Niveau Moyen+---------------------------------------------------------------------------------


-- Dans la table edusign, afficher le nombre d’apprenantes par date :
-- SELECT created_at, COUNT(users_id) 
-- FROM edusign
-- GROUP BY created_at;

-- Compter le nombre de ligne au sein de la table edusign dont le prénom est Bella
-- le nom de la colonne finale doit être volume (je suis pas trop sûre de moi sur 
-- cette étape) :
-- SELECT COUNT(users_id) AS Volume
-- FROM edusign
-- INNER JOIN users on users_id = users.id
-- WHERE users.firstname = 'Bella';