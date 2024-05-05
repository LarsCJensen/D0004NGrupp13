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
INSERT INTO booking (stationName, orgNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @Rökepipan, "2024-04-10", "2024-04-12", "Test Comment", True, 998);

INSERT INTO booking (stationName, orgNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @EcoTech, "2023-05-01", "2023-05-07", "Veckobokning", True, 3493);

INSERT INTO booking (stationName, orgNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @Wheels, "2024-05-01", "2024-05-31", "Månadsbokning", True, 9999);

INSERT INTO booking (stationName, orgNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Uppsala station", @TeknikHjälp, "2023-11-14", "2024-11-21", "Veckobokning", True, 3493);

INSERT INTO booking (stationName, orgNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Uppsala station", @GreenGardens, "2024-02-11", "2024-02-18", "Veckobokning", True, 3493);

INSERT INTO booking (stationName, orgNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Uppsala station", @SoltunnaEnergi, "2024-06-01", "2024-07-01", "Månadsbokning", True, 9999);

INSERT INTO booking (stationName, orgNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @Wheels, "2023-03-01", "2023-03-30", "Månadsbokning", True, 9999);

INSERT INTO booking (stationName, orgNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @ByggMästarna, "2023-05-01", "2023-05-07", "Veckobokning", True, 3493);

INSERT INTO booking (stationName, orgNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @EcoTech, "2024-01-01", "2024-02-01", "Månadsbokning", True, 9999);

-- Assign bookingNumber to variables instead of hardcoded values
SELECT bookingNumber INTO @RökepipanBooking
FROM booking
WHERE orgNumber = @Rökepipan
AND startDatum = "2024-04-10"
AND endDatum = "2024-04-12";

SELECT bookingNumber INTO @EcoTechBooking
FROM booking
WHERE orgNumber = @EcoTech
AND startDatum = "2023-05-01"
AND endDatum = "2023-05-07";

SELECT bookingNumber INTO @WheelsBooking
FROM booking
WHERE orgNumber = @Wheels
AND startDatum = "2024-05-01"
AND endDatum = "2024-05-31";

SELECT bookingNumber INTO @TeknikHjälpBooking
FROM booking
WHERE orgNumber = @TeknikHjälp
AND startDatum = "2023-11-14"
AND endDatum = "2024-11-21";

SELECT bookingNumber INTO @GreenGardensBooking
FROM booking
WHERE orgNumber = @GreenGardens
AND startDatum = "2024-02-11"
AND endDatum = "2024-02-18";

SELECT bookingNumber INTO @SoltunnaEnergiBooking
FROM booking
WHERE orgNumber = @SoltunnaEnergi
AND startDatum = "2024-06-01"
AND endDatum = "2024-07-01";

SELECT bookingNumber INTO @WheelsBooking2
FROM booking
WHERE orgNumber = @Wheels
AND startDatum = "2023-03-01"
AND endDatum = "2023-03-30";

SELECT bookingNumber INTO @ByggMästarnaBooking
FROM booking
WHERE orgNumber = @ByggMästarna
AND startDatum = "2023-05-01"
AND endDatum = "2023-05-07";

SELECT bookingNumber INTO @EcoTechBooking2
FROM booking
WHERE orgNumber = @Wheels
AND startDatum = "2024-01-01"
AND endDatum = "2024-02-01";

-- Insert booking details for each business_customer booking



-- Insert invoice data for business_customer




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

-- Insert private_customer booking data
INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @MaxB, "2023-04-22", "2023-04-23", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @FridaA, "2023-07-29", "2023-07-30", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @SagaN, "2023-11-04", "2023-11-05", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @DavidJ, "2024-04-01", "2024-04-07", "Veckobokning", True, 1497);

INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @EmmaA, "2024-07-22", "2024-07-28", "Veckobokning", True, 1497);

INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @ErikP, "2023-04-29", "2023-04-30", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @AnnaL, "2024-04-27", "2024-04-28", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @LisaA, "2024-07-27", "2024-07-28", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @ErikS, "2023-04-10", "2023-04-16", "Veckobokning", True, 1497);

INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @AnnaJ, "2024-04-01", "2024-04-07", "Veckobokning", True, 1497);

INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @PeterN, "2023-07-29", "2023-07-30", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @SaraK, "2024-04-27", "2024-04-28", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @JonasP, "2024-07-27", "2024-07-28", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @EmmaG, "2024-04-01", "2024-04-07", "Veckobokning", True, 1497);

INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @AndersL, "2024-07-22", "2024-07-28", "Veckobokning", True, 1497);

-- Insert invoice data for private_customer