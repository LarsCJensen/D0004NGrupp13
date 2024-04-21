-- Aktörer

-- Uthyrningspersonal
-- Sök fram alla bilar av en viss kategori på “min” station
-- Sök fram alla bilar av en viss kategori på alla stationer
-- Sök fram alla lediga bilar av en viss kategori på “min” station
-- Sök fram alla lediga bilar av en viss kategori på alla stationer
-- Lägg till kund
-- Avboka bokning
-- Uppdatera bokning med nytt datum
-- Koppla bil till annan station

-- Select all vacant cars for a station
SELECT v.registrationNumber as Registreringsnummer, vc.name as Fordonskategori
FROM green_rental.vehicle as v
LEFT JOIN booking_details as bd ON v.registrationNumber = bd.registrationNumber
LEFT JOIN booking as b ON bd.bookingNumber = b.bookingNumber
INNER JOIN vehicle_category as vc ON v.vehicleCategoryId = vc.vehicleCategoryId
WHERE v.stationName = "Uppsala station" AND (b.endDatum < "2024-04-13" OR b.endDatum IS NULL);


-- Select all vacant cars for all stations
SELECT v.registrationNumber as Registreringsnummer, vc.name as Fordonskategori, v.stationName as Station
FROM green_rental.vehicle as v
LEFT JOIN booking_details as bd ON v.registrationNumber = bd.registrationNumber
LEFT JOIN booking as b ON bd.bookingNumber = b.bookingNumber
INNER JOIN vehicle_category as vc ON v.vehicleCategoryId = vc.vehicleCategoryId
WHERE b.endDatum < "2024-04-13" OR b.endDatum IS NULL;

-- Select all vacant cars for "my" station of a certain category
SELECT v.registrationNumber, v.stationName FROM green_rental.vehicle as v
LEFT JOIN booking_details as bd ON v.registrationNumber = bd.registrationNumber
LEFT JOIN booking as b ON bd.bookingNumber = b.bookingNumber
INNER JOIN vehicle_category as vc ON v.vehicleCategoryId = vc.vehicleCategoryId
WHERE v.stationName = "Uppsala station" AND vc.name = "Stadsbil" AND (b.endDatum < "2024-04-12" OR b.endDatum IS NULL);


-- Underhållspersonal
-- Sök fram alla bilar i behov av kontroll
-- Sök fram alla bilar i behov av kontroll inom 3/6/12 månader
-- Sök fram alla bilar som har en skada
-- Lägg till en skada
-- Lägg till en kontroll



-- Administratörer
-- Ta fram alla fakturor under en viss period.
-- Ta fram alla obetalda fakturor.
-- Ta fram summan av alla fakturor för en viss period.
-- Lägg till faktura
-- Lägg till kampanj
