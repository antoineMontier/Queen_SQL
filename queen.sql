CREATE TABLE P04_Artiste (
    artiste_id  INTEGER AUTO_INCREMENT PRIMARY KEY,
    artiste_nom VARCHAR(50) NOT NULL,
    artiste_prenom VARCHAR(50) NOT NULL,
    artiste_naissance DATE
);

CREATE TABLE P04_Album(
    album_id  INTEGER AUTO_INCREMENT PRIMARY KEY,
    album_annee INTEGER NOT NULL CHECK (album_annee > 1900),
    album_nom VARCHAR(100) NOT NULL,
    album_genre VARCHAR(100) NOT NULL
);

CREATE TABLE P04_Participe(
    artiste_id INTEGER NOT NULL,
    album_id INTEGER NOT NULL,
    instrument VARCHAR(300) NOT NULL,
    FOREIGN KEY(artiste_id) REFERENCES P04_Artiste(artiste_id),
    FOREIGN KEY(album_id) REFERENCES P04_Album(album_id),
    PRIMARY KEY(artiste_id, album_id)
);




INSERT INTO P04_Artiste (artiste_nom,artiste_prenom,artiste_naissance) VALUES ('Mercury','Freddie',19460905);
INSERT INTO P04_Artiste (artiste_nom,artiste_prenom,artiste_naissance) VALUES ('May','Brian',19470719);
INSERT INTO P04_Artiste (artiste_nom,artiste_prenom,artiste_naissance) VALUES ('Deacon','John',19510819);
INSERT INTO P04_Artiste (artiste_nom,artiste_prenom,artiste_naissance) VALUES ('Taylor','Roger',19490726);