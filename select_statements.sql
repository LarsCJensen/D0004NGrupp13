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
SELECT vehicle.registrationNumber FROM green_rental.vehicle
INNER JOIN booking_details ON vehicle.registrationNumber = booking_details.registrationNumber
LEFT JOIN booking ON booking_details.bookingNumber = booking.bookingNumber
LEFT JOIN control ON vehicle.registrationNumber=control.registrationNumber
WHERE control.datum < "2024-04-12" and booking.endDate = "2024-04-12";

-- Sök fram alla bilar i behov av kontroll inom 3/6/12 månader
SELECT vehicle.registrationNumber as Registreringsnummer
FROM green_rental.vehicle
LEFT JOIN control ON control.registrationNumber=vehicle.registrationNumber
WHERE control.controlLarge is TRUE or control.controlDate is NULL and control.controlDate>=DATE_ADD(CURDATE(), INTERVAL 3 MONTH);

-- Sök fram alla bilar som har en skada
SELECT vehicle.RegistrationNumber as Registreringsnummer, damage.damageID as SkadeID, damage.descriptionDamage as Beskrivning
FROM green_rental.vehicle
INNER JOIN control ON control.registrationNumber=vehicle.registrationNumber
INNER JOIN damage ON damage.controlID=control.controlID
WHERE damage.repairedDate is NULL;

-- Lägg till en skada
INSERT INTO green_rental.damage (controlID,fixedDamage,descriptionDamage)
VALUES(1,FALSE,"Stenskott");

-- Lägg till en kontroll
INSERT INTO green_rental.control (registrationNumber,staffID,controlDate,controlLarge,fuelLevel)
VALUES("ABC123",1,"2024-04-21",FALSE,30);



-- Administratörer
-- Ta fram alla fakturor under en viss period.
-- Ta fram alla obetalda fakturor.
-- Ta fram summan av alla fakturor för en viss period.
-- Lägg till faktura
-- Lägg till kampanj
