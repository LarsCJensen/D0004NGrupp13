-- Aktörer

-- Uthyrningspersonal
-- Sök fram alla bilar som är lediga.
-- Sök fram alla bilar av en viss kategori på “min” station
-- Sök fram alla bilar av en viss kategori på alla stationer
-- Sök fram alla lediga bilar av en viss kategori på “min” station
-- Sök fram alla lediga bilar av en viss kategori på alla stationer
-- Lägg till kund
-- Avboka bokning
-- Uppdatera bokning med nytt datum
-- Koppla bil till annan station

-- Select all vacant cars
SELECT vehicle.registrationNumber FROM green_rental.vehicle
LEFT JOIN booking_details ON vehicle.registrationNumber = booking_details.registrationNumber
LEFT JOIN booking ON booking_details.bookingNumber = booking.bookingNumber
WHERE vehicle.stationName = "Uppsala station" AND booking.endDatum < "2024-04-13";


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

-- Ta fram alla fakturor under en viss period
SELECT *
FROM green_rental.invoice
LEFT JOIN green_rental.booking ON green_rental.invoice.bookingNumber = green_rental.booking.bookingNumber
WHERE green_rental.invoice.datum BETWEEN 'start_date' AND 'end_date';

-- Ta fram alla obetalda fakturor
SELECT *
FROM green_rental.invoice
LEFT JOIN green_rental.booking ON green_rental.invoice.bookingNumber = green_rental.booking.bookingNumber
WHERE green_rental.invoice.paid = FALSE;

-- Ta fram summan av alla fakturor för en viss period
SELECT SUM(green_rental.invoice.invoiceSum) AS total_sum
FROM green_rental.invoice
LEFT JOIN green_rental.booking ON green_rental.invoice.bookingNumber = green_rental.booking.bookingNumber
WHERE green_rental.invoice.datum BETWEEN 'start_date' AND 'end_date';

-- Lägg till faktura
INSERT INTO green_rental.invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES ('booking_number', 'invoice_sum', 'datum', 'due_date', 'paid_status');

-- Lägg till kampanj
INSERT INTO green_rental.offer (descriptionOffer, startDatum, endDatum, freeMileage, discount)
VALUES ('description', 'start_date', 'end_date', 'free_mileage', 'discount');

