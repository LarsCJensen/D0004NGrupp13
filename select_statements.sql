-- Aktörer

---- Uthyrningspersonal
-- Sök fram alla bilar av en viss kategori på “min” station
-- Sök fram alla bilar av en viss kategori på alla stationer
-- Sök fram alla lediga bilar av en viss kategori på “min” station
-- Sök fram alla lediga bilar av en viss kategori på alla stationer

-- Avboka bokning
-- Lägg till DELETE satser

-- Uppdatera bokning med nytt datum
UPDATE booking
SET endDatum = "2024-05-06"
WHERE stationName = "Uppsala station"
AND personalIdentificationNumber = "900530-1234"
AND startDatum = "2024-05-04";

UPDATE booking
SET endDatum = "2024-06-30", cost = "19998"
WHERE stationName = "Linköping station"
AND orgNumber = "789012-3456"
AND startDatum = "2024-05-01";

-- Koppla bil till annan station
UPDATE vehicle
SET stationName = "Linköping station"
WHERE registrationNumber = "KBA321";

UPDATE vehicle
SET stationName = "Linköping station"
WHERE registrationNumber = "CAG461";

UPDATE vehicle
SET stationName = "Lund station"
WHERE registrationNumber = "AAD123";

UPDATE vehicle
SET stationName = "Lund station"
WHERE registrationNumber = "AAC223";

-- Select all cars
SELECT v.registrationNumber as Registreringsnummer, vc.name as Fordonskategori, v.stationName as Station
FROM vehicle as v
INNER JOIN vehicle_category as vc ON v.vehicleCategoryId = vc.vehicleCategoryId
ORDER BY Station, FordonsKategori;


-- Select all vacant cars for a station
SELECT DISTINCT v.registrationNumber as Registreringsnummer, vc.name as Fordonskategori
FROM vehicle as v
LEFT JOIN booking_details as bd ON v.registrationNumber = bd.registrationNumber
LEFT JOIN booking as b ON bd.bookingNumber = b.bookingNumber
INNER JOIN vehicle_category as vc ON v.vehicleCategoryId = vc.vehicleCategoryId
WHERE v.stationName = "Linköping station" AND (b.endDate < "2024-04-13" OR b.endDate IS NULL)
ORDER BY Fordonskategori;


-- Select all vacant cars for all stations
SELECT DISTINCT v.registrationNumber as Registreringsnummer, vc.name as Fordonskategori, v.stationName as Station
FROM vehicle as v
LEFT JOIN booking_details as bd ON v.registrationNumber = bd.registrationNumber
LEFT JOIN booking as b ON bd.bookingNumber = b.bookingNumber
INNER JOIN vehicle_category as vc ON v.vehicleCategoryId = vc.vehicleCategoryId
WHERE b.endDate < "2024-04-13" OR b.endDate IS NULL
ORDER BY Station, Fordonskategori;


-- Select all vacant cars for "my" station of a certain category
SELECT DISTINCT v.registrationNumber, v.stationName FROM vehicle as v
LEFT JOIN booking_details as bd ON v.registrationNumber = bd.registrationNumber
LEFT JOIN booking as b ON bd.bookingNumber = b.bookingNumber
INNER JOIN vehicle_category as vc ON v.vehicleCategoryId = vc.vehicleCategoryId
WHERE v.stationName = "Linköping station" AND vc.name = "Stadsbil" AND (b.endDate < "2024-04-12" OR b.endDate IS NULL);

-- Select number of cars per station
SELECT v.stationName as Station, count(*) as "Antal bilar" 
FROM vehicle as v GROUP BY v.stationName;

-- Select all stations with vacant cars
SELECT v.stationName as Station, count(v.registrationNumber) as "Antal lediga bilar" 
FROM vehicle as v
WHERE v.registrationNumber IN 
	(  
		SELECT v.registrationNumber 
        FROM vehicle as v  
        LEFT JOIN booking_details as bd ON v.registrationNumber = bd.registrationNumber  
        LEFT JOIN booking as b ON bd.bookingNumber = b.bookingNumber  
        INNER JOIN vehicle_category as vc ON v.vehicleCategoryId = vc.vehicleCategoryId  
        WHERE b.endDate < "2024-04-12" OR b.endDate IS NULL
	) 
GROUP BY v.stationName;

-- Underhållspersonal
-- Sök fram alla bilar i behov av kontroll
-- Sök fram alla bilar i behov av en stor kontroll
-- Sök fram alla bilar som har en skada
-- Lägg till en skada
-- Lägg till en kontroll

-- Sök fram alla bilar i behov av kontroll under ett visst datum
SELECT DISTINCT vehicle.registrationNumber as Registreringsnummer, booking.bookingNumber as Bokningsnummer,
vehicle.stationName as Station, booking.endDate as bokning_slutdatum FROM vehicle
INNER JOIN booking_details ON vehicle.registrationNumber = booking_details.registrationNumber
INNER JOIN booking ON booking_details.bookingNumber = booking.bookingNumber
LEFT JOIN control ON vehicle.registrationNumber=control.registrationNumber
WHERE (control.controlDate < "2024-07-28" or control.controlDate is NULL) and booking.endDate = "2024-07-28";

-- Sök fram alla bilar i behov av en stor kontroll
SELECT 
    vehicle.registrationNumber AS Registreringsnummer,
    vehicle.stationName AS Station,
    MAX(control.controlDate) AS Senaste_Kontroll,
    MAX(CASE WHEN control.controlLarge IS TRUE THEN control.controlDate ELSE NULL END) AS Senaste_Stora_Kontroll,
    MAX(control.mileage) AS Senaste_Miltal,
    MAX(CASE WHEN control.controlLarge IS TRUE THEN control.mileage ELSE NULL END) AS Miltal_Vid_Senaste_Stora_Kontroll
FROM vehicle
LEFT JOIN control ON control.registrationNumber = vehicle.registrationNumber
GROUP BY vehicle.registrationNumber, vehicle.stationName
HAVING 
    Senaste_Kontroll IS NOT NULL
    AND Senaste_Stora_Kontroll IS NOT NULL
    AND ((Senaste_Miltal - Miltal_Vid_Senaste_Stora_Kontroll) >=1500
    OR Senaste_Stora_Kontroll <= DATE_SUB(CURDATE(),INTERVAL 18 month))
ORDER BY Registreringsnummer;

-- Sök fram alla bilar som har en skada
SELECT vehicle.RegistrationNumber as Registreringsnummer, damage.damageID as SkadeID, damage.descriptionDamage as Beskrivning
FROM vehicle
INNER JOIN control ON control.registrationNumber=vehicle.registrationNumber
INNER JOIN damage ON damage.controlID=control.controlID
WHERE damage.repairedDate is NULL;

-- Lägg till en skada
INSERT INTO damage (controlID,fixedDamage,repairedDate,descriptionDamage)
VALUES (1,true,"2024-03-15","Glasskada");

-- Lägg till en kontroll
INSERT INTO control (registrationNumber,staffID,controlDate,fuelLevel,mileage)
VALUES ("WVC331",1,"2024-03-01",40,500);


-- Administratörer
-- Ta fram alla fakturor under en viss period.
-- Ta fram alla obetalda fakturor.
-- Ta fram summan av alla fakturor för en viss period.
-- Lägg till faktura
-- Lägg till kampanj

-- Ta fram alla fakturor under en viss period
SELECT invoice.invoiceNumber, invoice.bookingNumber, invoice.invoiceSum, invoice.datum, invoice.dueDate, invoice.paid
FROM invoice
LEFT JOIN booking ON invoice.bookingNumber = booking.bookingNumber
WHERE invoice.datum BETWEEN DATE() AND DATE();

-- Ta fram alla obetalda fakturor
SELECT count(*) as "Antal obetalda fakturor", SUM(invoiceSum) as "Summa"
FROM invoice
LEFT JOIN booking ON invoice.bookingNumber = booking.bookingNumber
WHERE invoice.paid = FALSE;

-- Ta fram summan av alla fakturor för en viss period
SELECT SUM(invoice.invoiceSum) AS "Summa av fakturor"
FROM invoice
INNER JOIN booking ON invoice.bookingNumber = booking.bookingNumber
WHERE invoice.datum BETWEEN "2024-01-01" AND "2024-12-31";

-- Lägg till faktura
INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES ('booking_number', 'invoice_sum', 'datum', 'due_date', 'paid_status');

-- Lägg till kampanj
INSERT INTO offer (descriptionOffer, startDatum, endDatum, freeMileage, discount)
VALUES ('description', 'start_date', 'end_date', 'free_mileage', 'discount');