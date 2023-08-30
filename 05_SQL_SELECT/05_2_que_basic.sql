/* QUERIES Basic */

/*
Felder abfragen
Felder kombinieren
Ausgabe beschränken
*/

-- Abfrage aller Spalten der Tab
#SELECT * FROM stocks.ccc;

-- Begrenzung: LIMIT
-- Abfrage eines Feldes oder einer Feld-Kombi m. Umbenennung (Alias)
-- Kombinationen aus mehreren Feldern in neues Feld 
-- hier mit Verknüpfung CONCAT() // String-Fkt.
SELECT
    id,
    ticker AS "SYM", -- ändert die Spalte "ticker" zu "SYM
    c_name AS Unternehmen, -- ändert die Spalte "c_name" zu "Unternehmen
    # industry Branche
    # sector Industriesektor -- zeigt die Spalte "Industriesektor an
    CONCAT(sector, "|", industry) AS "Operations"
FROM stocks.ccc
LIMIT 10 -- Zeigt 10 Zeilen an
# LIMIT 1 -- zeigt nur eine Zeile an
# LIMIT 200, 10 -- offset
;