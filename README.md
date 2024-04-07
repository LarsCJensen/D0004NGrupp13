# D0004NGrupp13

#### Reflektioner:
- id/nr används kors/tvärs
- personal(stationId) som FK -> station(...) ? Vi måste välja antingen namn eller id!
- faktura(moms) är int, borde nog vara float
- Hur vill vi hantera trailing/leading 0, t.ex. i orgNr?
- Vill vi lägga till land på företag-/privatkunder eftersom det finns stationer med olika länder?
-- Alla tabeller har en kolumn med defaultvärde som är satt till NULL (trotts 'NOT NULL'), vill vi sätta det till något specifikt (t.ex. 0)?
  -- Hallå
