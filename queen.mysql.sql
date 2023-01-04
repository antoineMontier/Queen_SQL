DROP TABLE IF EXISTS P04_Artiste;

CREATE TABLE IF NOT EXISTS P04_Artiste (
  artiste_id INTEGER AUTO_INCREMENT PRIMARY KEY,
  artiste_nom VARCHAR(50) NOT NULL,
  artiste_prenom VARCHAR(50) NOT NULL,
  artiste_naissance DATE NOT NULL);


DROP TABLE IF EXISTS P04_Album;

CREATE TABLE IF NOT EXISTS P04_Album(
  album_id INTEGER AUTO_INCREMENT PRIMARY KEY,
  album_annee INTEGER NOT NULL CHECK (album_annee > 1900),
  album_nom VARCHAR(100) NOT NULL,
  album_genre VARCHAR(100) NOT NULL);


DROP TABLE IF EXISTS P04_Participe;

CREATE TABLE IF NOT EXISTS P04_Participe(
  artiste_id INTEGER NOT NULL,
  album_id INTEGER NOT NULL,
  instrument VARCHAR(100) NOT NULL,
  FOREIGN KEY(artiste_id) REFERENCES P04_Artiste(artiste_id),
  FOREIGN KEY(album_id) REFERENCES P04_Album(album_id),
  PRIMARY KEY(artiste_id, album_id));


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



INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='Queen'),'piano voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='Queen'),'basse');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='Queen'),'voix guitare piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='Queen'),'batterie voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='Queen II'),'basse');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='Queen II'),'guitare piano voix cloche');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='Queen II'),'batterie voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='Queen II'),'voix piano clavecin');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='Sheer Heart Attack'),'batterie tambour voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='Sheer Heart Attack'),'guitare voix piano ukulele');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='Sheer Heart Attack'),'voix piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='Sheer Heart Attack'),'guitare basse');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='A Night at the Opera'),'guitare');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='A Night at the Opera'),'voix piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='A Night at the Opera'),'basse electrique');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='A Night at the Opera'),'batterie');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='A Day at the Races'),'tambours batterie voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='A Day at the Races'),'basse');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='A Day at the Races'),'guitare voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='A Day at the Races'),'voix piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='News of the World'),'basse');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='News of the World'),'tambours voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='News of the World'),'guitare voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='Jazz'),'voix piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='Jazz'),'basse');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='Jazz'),'guitare voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='Jazz'),'batterie voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='The Game'),'voix piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='The Game'),'basse');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='The Game'),'voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='The Game'),'batterie voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='Flash Gordon'),'voix synthetiseur');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='Flash Gordon'),'basse guitare synthetiseur');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='Flash Gordon'),'voix guitare synthetiseur');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='Flash Gordon'),'tambour voix synthetiseur');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='Hot Space'),'voix synthetiseur');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='Hot Space'),'basse guitare electrique synthetiseur');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='Hot Space'),'guitare electrique guitare accoustique');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='Hot Space'),'tambour batterie guitare electrique');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='The Works'),'voix synthetiseur piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='The Works'),'basse guitare rythmique synthetiseur');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='The Works'),'guitare guitare accoustique synthetiseur');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='The Works'),'tambour batterie synthetiseur');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='A Kind of Magic'),'voix piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='A Kind of Magic'),'basse guitare');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='A Kind of Magic'),'guitare voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='A Kind of Magic'),'tambour voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='The Miracle'),'voix piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='The Miracle'),'basse');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='The Miracle'),'guitare electrique voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='Innuendo'),'voix piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='Innuendo'),'basse');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='Innuendo'),'guitare voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='Innuendo'),'batteries voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='Made in Heaven'),'voix piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='Made in Heaven'),'basse');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='Made in Heaven'),'guitare voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='Made in Heaven'),'batteries voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='The Cosmos Rocks (Queen + Paul Rodgers)'),'guitare voix basse');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='The Cosmos Rocks (Queen + Paul Rodgers)'),'batteries voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='Live Killers'),'voix piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='Live Killers'),'basse guitare');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='Live Killers'),'guitare voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='Live Killers'),'batteries Timbales voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='Live Magic'),'voix piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='Live Magic'),'basse');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='Live Magic'),'guitare voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='Live Magic'),'batteries voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='At the Beeb'),'voix piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='At the Beeb'),'basse');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='At the Beeb'),'guitare');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='At the Beeb'),'batteries');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='Live at Wembley 86'),'voix piano, guitare electrique');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='Live at Wembley 86'),'basse voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='Live at Wembley 86'),'guitare electrique synthetiseur voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='Live at Wembley 86'),'batteries tambour voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='Queen on Fire : Live at the Bowl'),'voix piano guitare');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='Queen on Fire : Live at the Bowl'),'basse guitare');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='Queen on Fire : Live at the Bowl'),'guitare voix piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='Queen on Fire : Live at the Bowl'),'batteries voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='Queen Rock Montreal'),'voix piano guitare');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='Queen Rock Montreal'),'basse');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='Queen Rock Montreal'),'guitare voix piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='Queen Rock Montreal'),'batteries voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='Hungarian Rhapsody: Queen Live in Budapest 86'),'voix piano guitare electrique');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='Hungarian Rhapsody: Queen Live in Budapest 86'),'basse voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='Hungarian Rhapsody: Queen Live in Budapest 86'),'guitare electrique');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='Hungarian Rhapsody: Queen Live in Budapest 86'),'batteries tambourin voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='Live at the Rainbow 74'),'voix piano janglebox');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='Live at the Rainbow 74'),'basse voix triangle');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='Live at the Rainbow 74'),'guitare voix ukulele');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='Live at the Rainbow 74'),'batteries voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Mercury'), (SELECT album_id FROM P04_Album WHERE album_nom='A Night at the Odeon'),'voix piano');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Deacon'), (SELECT album_id FROM P04_Album WHERE album_nom='A Night at the Odeon'),'basse triangle');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='A Night at the Odeon'),'guitare voix ukulele');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='A Night at the Odeon'),'batteries voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'May'), (SELECT album_id FROM P04_Album WHERE album_nom='Live Around the World'),'guitare voix');
INSERT INTO P04_Participe (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM P04_Artiste WHERE artiste_nom LIKE 'Taylor'), (SELECT album_id FROM P04_Album WHERE album_nom='Live Around the World'),'batteries voix');
