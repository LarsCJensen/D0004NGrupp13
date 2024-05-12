/* @author Dnyaz Ali Ahmet
 * @author Lars Jensen
 * @author Ingrid Heed
 * @author Emelie Wärmlund
 *
 * @date 2024-04-05
 *
 * This file is used to CRUD tables
 * of the fictive company Green Rental.
 */

-- List all databases, verify green_rental exists!
SHOW DATABASES;

-- Select the Green Rental database;
USE green_rental;

-- List each table of Green Rental
DESCRIBE booking;
DESCRIBE booking_details;
DESCRIBE invoice;

-- Assign orgNumber to variables instead of hardcoded values
SELECT orgNumber INTO @Rökepipan
FROM business_customer
WHERE name = 'BRF Rökepipan';

SELECT orgNumber INTO @EcoTech
FROM business_customer
WHERE name = 'EcoTech AB';

SELECT orgNumber INTO @Wheels
FROM business_customer
WHERE name = 'Wheels AB';

SELECT orgNumber INTO @TeknikHjälp
FROM business_customer
WHERE name = 'TeknikHjälp AB';

SELECT orgNumber INTO @GreenGardens
FROM business_customer
WHERE name = 'GreenGardens AB';

SELECT orgNumber INTO @ByggMästarna
FROM business_customer
WHERE name = 'ByggMästarna AB';

SELECT orgNumber INTO @SoltunnaEnergi
FROM business_customer
WHERE name = 'Soltunna Energi AB';

-- Insert business_customer booking data
INSERT INTO booking (stationName, orgNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @Rökepipan, "2024-04-10", "2024-04-12", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, orgNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @EcoTech, "2023-05-01", "2023-05-07", "Veckobokning", True, 3493);

INSERT INTO booking (stationName, orgNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @Wheels, "2024-05-01", "2024-05-31", "Månadsbokning", True, 9999);

INSERT INTO booking (stationName, orgNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Uppsala station", @TeknikHjälp, "2023-11-14", "2024-11-21", "Veckobokning", True, 3493);

INSERT INTO booking (stationName, orgNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Uppsala station", @GreenGardens, "2024-02-11", "2024-02-18", "Veckobokning", True, 3493);

INSERT INTO booking (stationName, orgNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Uppsala station", @SoltunnaEnergi, "2024-06-01", "2024-07-01", "Månadsbokning", True, 9999);

INSERT INTO booking (stationName, orgNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @Wheels, "2023-03-01", "2023-03-30", "Månadsbokning", True, 9999);

INSERT INTO booking (stationName, orgNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @ByggMästarna, "2023-05-01", "2023-05-07", "Veckobokning", True, 3493);

INSERT INTO booking (stationName, orgNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @EcoTech, "2024-01-01", "2024-02-01", "Månadsbokning", True, 9999);

-- Assign bookingNumber to variables instead of hardcoded values
SELECT bookingNumber INTO @RökepipanBooking
FROM booking
WHERE orgNumber = @Rökepipan
AND startDate = "2024-04-10"
AND endDate = "2024-04-12";

SELECT bookingNumber INTO @EcoTechBooking
FROM booking
WHERE orgNumber = @EcoTech
AND startDate = "2023-05-01"
AND endDate = "2023-05-07";

SELECT bookingNumber INTO @WheelsBooking
FROM booking
WHERE orgNumber = @Wheels
AND startDate = "2024-05-01"
AND endDate = "2024-05-31";

SELECT bookingNumber INTO @TeknikHjälpBooking
FROM booking
WHERE orgNumber = @TeknikHjälp
AND startDate = "2023-11-14"
AND endDate = "2024-11-21";

SELECT bookingNumber INTO @GreenGardensBooking
FROM booking
WHERE orgNumber = @GreenGardens
AND startDate = "2024-02-11"
AND endDate = "2024-02-18";

SELECT bookingNumber INTO @SoltunnaEnergiBooking
FROM booking
WHERE orgNumber = @SoltunnaEnergi
AND startDate = "2024-06-01"
AND endDate = "2024-07-01";

SELECT bookingNumber INTO @WheelsBooking2
FROM booking
WHERE orgNumber = @Wheels
AND startDate = "2023-03-01"
AND endDate = "2023-03-30";

SELECT bookingNumber INTO @ByggMästarnaBooking
FROM booking
WHERE orgNumber = @ByggMästarna
AND startDate = "2023-05-01"
AND endDate = "2023-05-07";

SELECT bookingNumber INTO @EcoTechBooking2
FROM booking
WHERE orgNumber = @Wheels
AND startDate = "2024-01-01"
AND endDate = "2024-02-01";

-- Insert booking details for each business_customer booking
INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@RökepipanBooking, "KLT369");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@EcoTechBooking, "CBA321");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@WheelsBooking, "WVC331");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@TeknikHjälpBooking, "ADA321");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@GreenGardensBooking, "CAG461");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@SoltunnaEnergiBooking, "AAD123");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@WheelsBooking2, "KLM963");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@ByggMästarnaBooking, "SDL176");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@EcoTechBooking2, "LMD994");

-- Insert invoice data for business_customer
INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@RökepipanBooking, 998, "2024-04-12", DATE_ADD("2024-04-12", INTERVAL 30 DAY), false);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@EcoTechBooking, 3493, "2023-05-07", DATE_ADD("2023-05-07", INTERVAL 30 DAY), false);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@WheelsBooking, 9999, "2024-05-31", DATE_ADD("2024-05-31", INTERVAL 30 DAY), false);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@TeknikHjälpBooking, 3493, "2024-11-21", DATE_ADD("2024-11-21", INTERVAL 30 DAY), false);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@GreenGardensBooking, 3493, "2024-02-18", DATE_ADD("2024-02-18", INTERVAL 30 DAY), false);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@SoltunnaEnergiBooking, 9999, "2024-07-01", DATE_ADD("2024-07-01", INTERVAL 30 DAY), false);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@WheelsBooking2, 9999, "2023-03-30", DATE_ADD("2023-03-30", INTERVAL 30 DAY), false);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@ByggMästarnaBooking, 3493, "2023-05-07", DATE_ADD("2023-05-07", INTERVAL 30 DAY), false);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@EcoTechBooking2, 9999, "2024-02-01", DATE_ADD("2024-02-01", INTERVAL 30 DAY), false);

-- Assign variables to be used instead of hardcoded values
SELECT personalIdentificationNumber INTO @MaxB
FROM private_customer
WHERE firstName = 'Max' AND lastName = 'Berggren';

SELECT personalIdentificationNumber INTO @FridaA
FROM private_customer
WHERE firstName = 'Frida' AND lastName = 'Andersson';

SELECT personalIdentificationNumber INTO @SagaN
FROM private_customer
WHERE firstName = 'Saga' AND lastName = 'Nilsen';

SELECT personalIdentificationNumber INTO @DavidJ
FROM private_customer
WHERE firstName = 'David' AND lastName = 'Johansson';

SELECT personalIdentificationNumber INTO @EmmaA
FROM private_customer
WHERE firstName = 'Emma' AND lastName = 'Andersson';

SELECT personalIdentificationNumber INTO @ErikP
FROM private_customer
WHERE firstName = 'Erik' AND lastName = 'Persson';

SELECT personalIdentificationNumber INTO @AnnaL
FROM private_customer
WHERE firstName = 'Anna' AND lastName = 'Lundgren';

SELECT personalIdentificationNumber INTO @LisaA
FROM private_customer
WHERE firstName = 'Lisa' AND lastName = 'Andersson';

SELECT personalIdentificationNumber INTO @ErikS
FROM private_customer
WHERE firstName = 'Erik' AND lastName = 'Svensson';

SELECT personalIdentificationNumber INTO @AnnaJ
FROM private_customer
WHERE firstName = 'Anna' AND lastName = 'Johansson';

SELECT personalIdentificationNumber INTO @PeterN
FROM private_customer
WHERE firstName = 'Peter' AND lastName = 'Nilsson';

SELECT personalIdentificationNumber INTO @SaraK
FROM private_customer
WHERE firstName = 'Sara' AND lastName = 'Karlsson';

SELECT personalIdentificationNumber INTO @JonasP
FROM private_customer
WHERE firstName = 'Jonas' AND lastName = 'Persson';

SELECT personalIdentificationNumber INTO @EmmaG
FROM private_customer
WHERE firstName = 'Emma' AND lastName = 'Gustafsson';

SELECT personalIdentificationNumber INTO @AndersL
FROM private_customer
WHERE firstName = 'Anders' AND lastName = 'Larsson';

-- Assign offerID to variables instead of hardcoded values
SELECT offerID INTO @Weekendresa
FROM offer
WHERE startDatum = '2023-07-29'
AND endDatum = '2023-07-30';

SELECT offerID INTO @Familjeresa
FROM offer
WHERE startDatum = '2024-04-01'
AND endDatum = '2024-04-07';

-- Insert private_customer booking data
INSERT INTO booking (stationName, personalIdentificationNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Uppsala station", @MaxB, "2023-04-22", "2023-04-23", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, offerID, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Uppsala station", @FridaA, @Weekendresa, "2023-07-29", "2023-07-30", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Uppsala station", @SagaN, "2023-11-04", "2023-11-05", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Uppsala station", @DavidJ, @Familjeresa, "2024-04-01", "2024-04-07", "Veckobokning", True, 1497);

INSERT INTO booking (stationName, personalIdentificationNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Uppsala station", @EmmaA, "2024-07-22", "2024-07-28", "Veckobokning", True, 1497);

INSERT INTO booking (stationName, personalIdentificationNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @ErikP, "2023-04-29", "2023-04-30", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @AnnaL, "2024-04-27", "2024-04-28", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @LisaA, "2024-07-27", "2024-07-28", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @ErikS, "2023-04-10", "2023-04-16", "Veckobokning", True, 1497);

INSERT INTO booking (stationName, personalIdentificationNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @AnnaJ, @Familjeresa, "2024-04-01", "2024-04-07", "Veckobokning", True, 1497);

INSERT INTO booking (stationName, personalIdentificationNumber, offerID, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @PeterN, @Weekendresa, "2023-07-29", "2023-07-30", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @SaraK, "2024-04-27", "2024-04-28", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @JonasP, "2024-07-27", "2024-07-28", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @EmmaG, @Familjeresa, "2024-04-01", "2024-04-07", "Veckobokning", True, 1497);

INSERT INTO booking (stationName, personalIdentificationNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @AndersL, "2024-07-22", "2024-07-28", "Veckobokning", True, 1497);

-- Assign bookingNumber to variables instead of hardcoded values
SELECT bookingNumber INTO @MaxBBooking
FROM booking
WHERE personalIdentificationNumber = @MaxB;

SELECT bookingNumber INTO @FridaABooking
FROM booking
WHERE personalIdentificationNumber = @FridaA;

SELECT bookingNumber INTO @SagaNBooking
FROM booking
WHERE personalIdentificationNumber = @SagaN;

SELECT bookingNumber INTO @DavidJBooking
FROM booking
WHERE personalIdentificationNumber = @DavidJ;

SELECT bookingNumber INTO @EmmaABooking
FROM booking
WHERE personalIdentificationNumber = @EmmaA;

SELECT bookingNumber INTO @ErikPBooking
FROM booking
WHERE personalIdentificationNumber = @ErikP;

SELECT bookingNumber INTO @AnnaLBooking
FROM booking
WHERE personalIdentificationNumber = @AnnaL;

SELECT bookingNumber INTO @LisaABooking
FROM booking
WHERE personalIdentificationNumber = @LisaA;

SELECT bookingNumber INTO @ErikSBooking
FROM booking
WHERE personalIdentificationNumber = @ErikS;

SELECT bookingNumber INTO @AnnaJBooking
FROM booking
WHERE personalIdentificationNumber = @AnnaJ;

SELECT bookingNumber INTO @PeterNBooking
FROM booking
WHERE personalIdentificationNumber = @PeterN;

SELECT bookingNumber INTO @SaraKBooking
FROM booking
WHERE personalIdentificationNumber = @SaraK;

SELECT bookingNumber INTO @JonasPBooking
FROM booking
WHERE personalIdentificationNumber = @JonasP;

SELECT bookingNumber INTO @EmmaGBooking
FROM booking
WHERE personalIdentificationNumber = @EmmaG;

SELECT bookingNumber INTO @AndersLBooking
FROM booking
WHERE personalIdentificationNumber = @AndersL;

-- Insert booking details for each private_customer booking
INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@MaxBBooking, "ABC123");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@FridaABooking, "AAC223");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@SagaNBooking, "LLD914");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@DavidJBooking, "CWV737");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@EmmaABooking, "SMM346");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@ErikPBooking, "KLM963");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@AnnaLBooking, "LKT752");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@LisaABooking, "CTS213");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@ErikSBooking, "LMD994");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@AnnaJBooking, "SDL176");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@PeterNBooking, "CBA321");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@SaraKBooking, "EDF774");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@JonasPBooking, "FED575");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@EmmaGBooking, "AKB465");

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES(@AndersLBooking, "WVC331");

-- Insert invoice data for private_customer
INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@MaxBBooking, 998, "2023-04-23", "2023-04-23", true);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@FridaABooking, 998, "2023-07-30", "2023-07-30", true);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@SagaNBooking, 998, "2023-11-05", "2023-11-05", true);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@DavidJBooking, 1497, "2024-04-07", "2024-04-07", false);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@EmmaABooking, 1497, "2024-07-28", "2024-07-28", false);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@ErikPBooking, 998, "2023-04-30", "2023-04-30", true);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@AnnaLBooking, 998, "2024-04-28", "2024-04-28", false);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@LisaABooking, 998, "2024-07-28", "2024-07-28", false);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@ErikSBooking, 1497, "2023-04-16", "2023-04-16", true);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@AnnaJBooking, 1497, "2024-04-07", "2024-04-07", false);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@PeterNBooking, 998, "2023-07-30", "2023-07-30", true);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@SaraKBooking, 998, "2024-04-28", "2024-04-28", false);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@JonasPBooking, 998, "2024-07-28", "2024-07-28", false);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@EmmaGBooking, 1497, "2024-04-07", "2024-04-07", false);

INSERT INTO invoice (bookingNumber, invoiceSum, datum, dueDate, paid)
VALUES(@AndersLBooking, 1497, "2024-07-28", "2024-07-28", false);