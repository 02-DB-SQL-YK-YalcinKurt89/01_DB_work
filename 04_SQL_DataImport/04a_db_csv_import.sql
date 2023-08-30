/* Datenimport - csv mit ID */

/* Tabelle cats*/
DROP TABLE IF EXISTS boo.cats;

CREATE TABLE IF NOT EXISTS boo.cats
(
    id INT NOT NULL PRIMARY KEY,
    cat_name VARCHAR(20) NOT NULL,
    fur_color VARCHAR(20) NOT NULL,
    age INT NOT NULL
);

/* Struktur */
DESCRIBE boo.cats;

-- CSV-Datei parsen
LOAD DATA LOCAL INFILE "04_SQL_DataImport/data/cats_export.csv"
INTO TABLE boo.cats          -- "INTO TABLE" gibt an, in welche Tabelle die Daten importiert werden sollen (hier: Tabelle "cats").
FIELDS TERMINATED BY ";"     -- "FIELDS TERMINATED BY" legt das Trennzeichen fest, das die Felder in der CSV-Datei trennt (hier: Semikolon ';').
LINES TERMINATED BY "\n"     -- "LINES TERMINATED BY" gibt das Zeilentrennzeichen in der CSV-Datei an (hier: Zeilenumbruch '\n').
IGNORE 1 ROWS -- "IGNORE 1 ROWS" gibt an, dass die erste Zeile der CSV-Datei übersprungen werden soll (oft Überschriften).
;

SELECT * FROM boo.cats;
-- source 04_SQL_DataImport/data/04a_db_csv_import.sql