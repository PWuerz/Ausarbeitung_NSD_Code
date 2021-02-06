DROP TABLE nsd_ausarbeitung_re.Beziehung;
DROP TABLE nsd_ausarbeitung_re.BeziehungsArt;
DROP TABLE nsd_ausarbeitung_re.Person;

CREATE TABLE nsd_ausarbeitung_re.Person (
personId INT PRIMARY KEY,
vorname VARCHAR(64) NOT NULL ,
nachname VARCHAR(64) NOT NULL
);

CREATE TABLE nsd_ausarbeitung_re.BeziehungsArt(
beziehungsArtId INT PRIMARY KEY, 
bezeichnung VARCHAR(32) NOT NULL
);

CREATE TABLE nsd_ausarbeitung_re.Beziehung(
person1Id INT,
person2Id INT,
beziehungsArtId INT,
PRIMARY KEY (person1Id , person2Id , beziehungsArtId),
FOREIGN KEY (person1Id) REFERENCES Person(personId),
FOREIGN KEY (person2Id) REFERENCES Person(personId),
FOREIGN KEY (beziehungsArtId) REFERENCES BeziehungsArt(beziehungsArtId)
);

INSERT INTO nsd_ausarbeitung_re.Person    VALUE(1, "Mia", "Müller");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(2, "Emma", "Schmidt");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(3, "Hannah", "Schneider");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(4, "Sofia" , "Fischer");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(5, "Anna", "Weber");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(6, "Emilia", "Meyer");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(7, "Lina", "Wagner");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(8, "Marie", "Becker" );
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(9, "Lena", "Schulz");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(10, "Mila", "Hoffmann");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(11, "Emily", "Schäfer");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(12, "Lea", "Bauer");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(13, "Ben", "Koch");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(14, "Jonas", "Richter");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(15, "Leon", "Klein");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(16, "Elias", "Wolf");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(17, "Finn", "Schröder");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(18, "Noah", "Neumann");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(19, "Paul", "Schwarz");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(20, "Lukas", "Braun");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(21, "Felix",  "Hofmann");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(22, "Maximilian", "Zimmermann");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(23, "Henry", "Schmitt");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(24, "Max", "Hartmann");
INSERT INTO nsd_ausarbeitung_re.Person    VALUE(25, "Jakob", "Krüger" );
-- SELECT * FROM nsd_ausarbeitung_re.Person;

INSERT INTO nsd_ausarbeitung_re.BeziehungsArt    VALUE(1,"Freunde");
INSERT INTO nsd_ausarbeitung_re.BeziehungsArt    VALUE(2,"Bekannte");
INSERT INTO nsd_ausarbeitung_re.BeziehungsArt    VALUE(3,"Arbeitskollegen");
INSERT INTO nsd_ausarbeitung_re.BeziehungsArt    VALUE(4,"Dozent von");
INSERT INTO nsd_ausarbeitung_re.BeziehungsArt    VALUE(5,"Wissenschaftlicher Mitarbeiter von");
INSERT INTO nsd_ausarbeitung_re.BeziehungsArt    VALUE(6,"Wissenschaftliche Hilfskraft von");
INSERT INTO nsd_ausarbeitung_re.BeziehungsArt    VALUE(7,"Studentische Hilfskraft von");
-- SELECT * FROM nsd_ausarbeitung_re.BeziehungsArt;

-- personid 1 , person id 2 , beziehungsid

-- Beziehung 1: "Freunde" Random 3 / 10 Bekannte
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (1,9,1);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (17,20,1);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (4,7,1);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,19,1);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (6,16,1);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (14,21,1);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (2,21,1);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (3,19,1);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,16,1);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (12,15,1);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (6,8,1);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (14,19,1);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (13,25,1);
-- Beziehung 1: "Freunde" BEENDET

-- Beziehung 2: "Bekannte"	1,4,7,9,17,20,23,24
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (1,4,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (1,7,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (1,17,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (1,20,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (1,23,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (1,24,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (4,9,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (4,17,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (4,20,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (4,23,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (4,24,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (7,9,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (7,17,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (7,20,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (7,23,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (7,24,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (9,17,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (9,20,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (9,23,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (9,24,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (17,23,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (17,24,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (20,23,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (20,24,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (23,24,2);
-- Beziehung 2: "Bekannte"" BEENDET
-- Beziehung 2: "Bekannte"  2,3,5,6,8,10,11,12,13,14,15,16,19,21,25
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (2,3,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (2,5,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (2,6,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (2,8,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (2,10,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (2,11,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (2,12,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (2,13,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (2,14,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (2,15,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (2,16,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (2,19,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (2,25,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (3,5,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (3,6,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (3,8,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (3,10,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (3,11,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (3,12,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (3,13,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (3,14,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (3,15,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (3,16,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (3,21,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (3,25,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,6,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,8,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,10,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,11,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,12,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,13,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,14,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,15,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,21,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,25,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (6,10,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (6,11,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (6,12,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (6,13,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (6,14,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (6,15,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (6,19,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (6,21,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (6,25,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (8,10,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (8,11,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (8,12,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (8,13,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (8,14,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (8,15,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (8,16,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (8,19,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (8,21,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (8,25,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (10,11,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (10,12,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (10,13,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (10,14,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (10,15,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (10,16,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (10,19,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (10,21,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (10,25,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (11,12,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (11,13,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (11,14,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (11,15,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (11,16,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (11,19,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (11,21,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (11,25,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (12,13,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (12,14,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (12,16,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (12,19,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (12,21,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (12,25,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (13,14,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (13,15,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (13,16,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (13,19,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (13,21,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (14,15,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (14,16,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (14,25,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (15,16,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (15,19,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (15,21,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (15,25,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (16,19,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (16,21,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (16,25,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (19,21,2);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (19,25,2);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (21,25,2);
-- Beziehung 2: "Bekannte"" BEENDET

-- Beziehung 3: "Arbeitskollegen" 4,5,7,8,20,22,23,25 untereinander
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (4,5,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (4,7,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (4,8,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (4,20,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (4,22,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (4,23,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (4,25,3);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,7,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,8,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,20,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,22,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,23,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,25,3);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (7,8,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (7,20,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (7,22,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (7,23,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (7,25,3);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (8,20,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (8,22,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (8,23,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (8,25,3);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (20,22,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (20,23,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (20,25,3);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (22,23,3);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (22,25,3);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (23,25,3);
-- Beziehung 3: "Arbeitskollegen" BEENDET

-- Beziehung 4: Dozenten werden den einzelnen Studenten zugeordnet
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (1,3,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (1,13,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (1,15,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (1,11,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (1,14,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (1,2,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (1,19,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (1,21,4);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (9,2,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (9,6,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (9,10,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (9,14,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (9,18,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (9,15,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (9,11,4);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (17,2,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (17,12,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (17,19,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (17,21,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (17,3,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (17,5,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (17,8,4);

INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (24,25,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (24,22,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (24,8,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (24,5,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (24,2,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (24,6,4);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (24,10,4);
-- Beziehung 4: "Dozent von" BEENDET
-- Beziehung 5: "Wissenschaftlicher Mitarbeiter von"
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (7,1,5);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (4,9,5);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (20,17,5);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (23,24,5);
-- Beziehung 5: "Wissenschaftlicher Mitarbeiter von" BEENDET
-- Beziehung 6: "Wissenschaftliche Hilfskraft von"
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (25,1,6);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (22,9,6);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (8,17,6);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (5,24,6);
-- Beziehung 6: "Wissenschaftliche Hilfskraft von" BEENDET
-- Beziehung 7: "Studentische Hilfskraft von"
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (15,1,7);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (13,9,7);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (11,17,7);
INSERT INTO nsd_ausarbeitung_re.Beziehung VALUE (3,24,7);
-- Beziehung 7: "Studentische Hilfskraft von" BEENDET
-- SELECT * FROM nsd_ausarbeitung_re.Beziehung;

-- Querys zum testen
-- SELECT p.*,b.beziehungsArtId,b.person2Id FROM nsd_ausarbeitung_re.Person p,nsd_ausarbeitung_re.Beziehung b,nsd_ausarbeitung_re.BeziehungsArt a WHERE a.bezeichnung = "Freunde" ORDER BY b.beziehungsArtId;
-- SELECT p.*,b.beziehungsArtId,b.person2Id FROM nsd_ausarbeitung_re.Person p,nsd_ausarbeitung_re.Beziehung b WHERE p.personid = b.person1Id ORDER BY b.beziehungsArtId;
-- SELECT p.* FROM nsd_ausarbeitung_re.Person p WHERE p.personid = 9;

-- SELECT p.*,b.beziehungsArtId,b.person2Id FROM nsd_ausarbeitung_re.Person p,nsd_ausarbeitung_re.Beziehung b WHERE p.personid = b.person1Id ORDER BY b.beziehungsArtId INTO OUTFILE "C:/Users/Philipp/Desktop/orders.json" FIELDS ENCLOSED BY '' 
-- TERMINATED BY ',' 
-- ESCAPED BY '"' 
-- LINES TERMINATED BY '
-- ';

-- Abfrage mit INNER Joins
SELECT p.vorname,p.nachname,b.person1id,b.person2id,a.bezeichnung FROM nsd_ausarbeitung_re.Beziehung b
INNER JOIN nsd_ausarbeitung_re.Person p ON p.personId=b.person1id
INNER JOIN nsd_ausarbeitung_re.BeziehungsArt a ON b.beziehungsartid=a.beziehungsArtId
ORDER BY b.beziehungsArtid;