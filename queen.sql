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


INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('Queen',1973,'Hard Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('Queen II',1974,'Glam Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('Sheer Heart Attack',1974,'Punk Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('A Night at the Opera',1975,'Pop-Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('A Day at the Races',1976,'Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('News of the World',1977,'Genre');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('Jazz',1978,'Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('The Game',1980,'Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('Flash Gordon',1980,'Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('Hot Space',1982,'Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('The Works',1984,'Pop-Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('A Kind of Magic',1986,'Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('The Miracle',1989,'Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('Innuendo',1991,'Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('Made in Heaven',1995,'New Age');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('The Cosmos Rocks (Queen + Paul Rodgers)',2008,'Indie');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('Live Killers',1979,'Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('Live Magic',1986,'Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('At the Beeb',1989,'Rock/Metal');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('Live at Wembley 86',1992,'Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('Queen on Fire : Live at the Bowl',2004,'Pop-Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('Queen Rock Montreal',2007,'Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('Hungarian Rhapsody: Queen Live in Budapest 86',2012,'Musique Classique');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('Live at the Rainbow 74',2014,'Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('A Night at the Odeon',2015,'Rock');
INSERT INTO P04_Album(album_nom,album_annee,album_genre) VALUES ('Live Around the World',2020,'Rock');
