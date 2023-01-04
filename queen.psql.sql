DROP TABLE IF EXISTS Artist;

CREATE TABLE IF NOT EXISTS Artist(
    artiste_id SERIAL PRIMARY KEY,
    artist_lastname VARCHAR(50) NOT NULL,
    artist_firstname VARCHAR(50) NOT NULL,
    artist_birth DATE NOT NULL);


DROP TABLE IF EXISTS Album;

CREATE TABLE IF NOT EXISTS Album(
    album_id  SERIAL PRIMARY KEY,
    album_year INTEGER NOT NULL CHECK (album_year > 1900),
    album_name VARCHAR(100) NOT NULL,
    album_type VARCHAR(100) NOT NULL);


DROP TABLE IF EXISTS Participate;

CREATE TABLE IF NOT EXISTS Participate(
    artiste_id INTEGER NOT NULL,
    album_id INTEGER NOT NULL,
    instrument VARCHAR(300) NOT NULL,
    FOREIGN KEY(artiste_id) REFERENCES Artist(artiste_id),
    FOREIGN KEY(album_id) REFERENCES Album(album_id),
    PRIMARY KEY(artiste_id, album_id));



INSERT INTO Artist (artist_lastname,artist_firstname,artist_birth) VALUES ('Mercury','Freddie','1946-09-05');
INSERT INTO Artist (artist_lastname,artist_firstname,artist_birth) VALUES ('May','Brian','1947-07-19');
INSERT INTO Artist (artist_lastname,artist_firstname,artist_birth) VALUES ('Deacon','John','1951-08-19');
INSERT INTO Artist (artist_lastname,artist_firstname,artist_birth) VALUES ('Taylor','Roger','1949-07-26');





INSERT INTO Album(album_name,album_year,album_type) VALUES ('Queen',1973,'Hard Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('Queen II',1974,'Glam Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('Sheer Heart Attack',1974,'Punk Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('A Night at the Opera',1975,'Pop-Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('A Day at the Races',1976,'Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('News of the World',1977,'Genre');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('Jazz',1978,'Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('The Game',1980,'Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('Flash Gordon',1980,'Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('Hot Space',1982,'Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('The Works',1984,'Pop-Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('A Kind of Magic',1986,'Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('The Miracle',1989,'Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('Innuendo',1991,'Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('Made in Heaven',1995,'New Age');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('The Cosmos Rocks (Queen + Paul Rodgers)',2008,'Indie');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('Live Killers',1979,'Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('Live Magic',1986,'Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('At the Beeb',1989,'Rock/Metal');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('Live at Wembley 86',1992,'Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('Queen on Fire : Live at the Bowl',2004,'Pop-Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('Queen Rock Montreal',2007,'Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('Hungarian Rhapsody: Queen Live in Budapest 86',2012,'Musique Classique');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('Live at the Rainbow 74',2014,'Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('A Night at the Odeon',2015,'Rock');
INSERT INTO Album(album_name,album_year,album_type) VALUES ('Live Around the World',2020,'Rock');





INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='Queen'),'piano voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='Queen'),'basse');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='Queen'),'voix guitare piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='Queen'),'batterie voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='Queen II'),'basse');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='Queen II'),'guitare piano voix cloche');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='Queen II'),'batterie voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='Queen II'),'voix piano clavecin');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='Sheer Heart Attack'),'batterie tambour voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='Sheer Heart Attack'),'guitare voix piano ukulele');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='Sheer Heart Attack'),'voix piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='Sheer Heart Attack'),'guitare basse');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='A Night at the Opera'),'guitare');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='A Night at the Opera'),'voix piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='A Night at the Opera'),'basse electrique');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='A Night at the Opera'),'batterie');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='A Day at the Races'),'tambours batterie voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='A Day at the Races'),'basse');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='A Day at the Races'),'guitare voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='A Day at the Races'),'voix piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='News of the World'),'basse');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='News of the World'),'tambours voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='News of the World'),'guitare voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='Jazz'),'voix piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='Jazz'),'basse');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='Jazz'),'guitare voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='Jazz'),'batterie voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='The Game'),'voix piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='The Game'),'basse');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='The Game'),'voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='The Game'),'batterie voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='Flash Gordon'),'voix synthetiseur');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='Flash Gordon'),'basse guitare synthetiseur');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='Flash Gordon'),'voix guitare synthetiseur');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='Flash Gordon'),'tambour voix synthetiseur');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='Hot Space'),'voix synthetiseur');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='Hot Space'),'basse guitare electrique synthetiseur');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='Hot Space'),'guitare electrique guitare accoustique');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='Hot Space'),'tambour batterie guitare electrique');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='The Works'),'voix synthetiseur piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='The Works'),'basse guitare rythmique synthetiseur');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='The Works'),'guitare guitare accoustique synthetiseur');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='The Works'),'tambour batterie synthetiseur');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='A Kind of Magic'),'voix piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='A Kind of Magic'),'basse guitare');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='A Kind of Magic'),'guitare voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='A Kind of Magic'),'tambour voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='The Miracle'),'voix piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='The Miracle'),'basse');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='The Miracle'),'guitare electrique voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='Innuendo'),'voix piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='Innuendo'),'basse');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='Innuendo'),'guitare voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='Innuendo'),'batteries voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='Made in Heaven'),'voix piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='Made in Heaven'),'basse');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='Made in Heaven'),'guitare voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='Made in Heaven'),'batteries voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='The Cosmos Rocks (Queen + Paul Rodgers)'),'guitare voix basse');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='The Cosmos Rocks (Queen + Paul Rodgers)'),'batteries voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='Live Killers'),'voix piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='Live Killers'),'basse guitare');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='Live Killers'),'guitare voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='Live Killers'),'batteries Timbales voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='Live Magic'),'voix piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='Live Magic'),'basse');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='Live Magic'),'guitare voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='Live Magic'),'batteries voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='At the Beeb'),'voix piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='At the Beeb'),'basse');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='At the Beeb'),'guitare');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='At the Beeb'),'batteries');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='Live at Wembley 86'),'voix piano, guitare electrique');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='Live at Wembley 86'),'basse voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='Live at Wembley 86'),'guitare electrique synthetiseur voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='Live at Wembley 86'),'batteries tambour voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='Queen on Fire : Live at the Bowl'),'voix piano guitare');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='Queen on Fire : Live at the Bowl'),'basse guitare');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='Queen on Fire : Live at the Bowl'),'guitare voix piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='Queen on Fire : Live at the Bowl'),'batteries voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='Queen Rock Montreal'),'voix piano guitare');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='Queen Rock Montreal'),'basse');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='Queen Rock Montreal'),'guitare voix piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='Queen Rock Montreal'),'batteries voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='Hungarian Rhapsody: Queen Live in Budapest 86'),'voix piano guitare electrique');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='Hungarian Rhapsody: Queen Live in Budapest 86'),'basse voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='Hungarian Rhapsody: Queen Live in Budapest 86'),'guitare electrique');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='Hungarian Rhapsody: Queen Live in Budapest 86'),'batteries tambourin voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='Live at the Rainbow 74'),'voix piano janglebox');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='Live at the Rainbow 74'),'basse voix triangle');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='Live at the Rainbow 74'),'guitare voix ukulele');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='Live at the Rainbow 74'),'batteries voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Mercury'), (SELECT album_id FROM Album WHERE album_name='A Night at the Odeon'),'voix piano');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Deacon'), (SELECT album_id FROM Album WHERE album_name='A Night at the Odeon'),'basse triangle');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='A Night at the Odeon'),'guitare voix ukulele');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='A Night at the Odeon'),'batteries voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'May'), (SELECT album_id FROM Album WHERE album_name='Live Around the World'),'guitare voix');
INSERT INTO Participate (artiste_id,album_id,instrument) VALUES ((SELECT artiste_id FROM Artist WHERE artist_lastname LIKE 'Taylor'), (SELECT album_id FROM Album WHERE album_name='Live Around the World'),'batteries voix');
