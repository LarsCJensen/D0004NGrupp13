/* @author Dnyaz Ali Ahmet
 * @author Lars Jensen
 * @author Ingrid Heed
 * @author Emelie Wärmlund
 *
 * @date 2024-05-05
 *
 * This file is used to CRUD tables
 * of the fictive company Green Rental.
 */

-- List all databases, verify green_rental exists!
SHOW DATABASES;

-- Select the Green Rental database;
USE green_rental;

-- List each table of Green Rental
DESCRIBE station;
DESCRIBE staff;
DESCRIBE vehicle;
DESCRIBE vehicle_category;
DESCRIBE business_customer;
DESCRIBE private_customer;
DESCRIBE agreement;
DESCRIBE offer;
DESCRIBE booking;
DESCRIBE booking_details;
DESCRIBE invoice;
DESCRIBE report;
DESCRIBE control;
DESCRIBE damage;

-- Insert station data
INSERT INTO station (stationName, streetName, zipCode, country, city)
VALUES ('Uppsala station', 'Uppsalavägen 111', '11111', 'SWE', 'Uppsala');
INSERT INTO station (stationName, streetName, zipCode, country, city)
VALUES ('Lund station', 'Lundvägen 222', '22222', 'SWE', 'Lund');
INSERT INTO station (stationName, streetName, zipCode, country, city)
VALUES ('Linköping station', 'Linköpingsvägen 333', '33333', 'SWE', 'Linköping');

-- Insert staff data for Uppsala Station
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Emelie', 'W', 'Manager', "Uppsala Station", '2024-01-01', '123-123-123', 'emelie.w@greenrental.com', 'Uppsalavägen 110', '11110', false);
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Ingrid', 'H', 'Manager', "Uppsala Station", '2024-01-01', '123-123-123', 'ingrid.h@greenrental.com', 'Uppsalavägen 111', '11111', false);
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Anders', 'Persson', 'Clerk', 'Uppsala Station', '2023-11-10', '070-999-9876', 'anders.persson@greenrental.com', 'Uppsalavägen 789', '11112', false);
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Sara', 'Eriksson', 'Clerk', 'Uppsala Station', '2023-08-20', '070-123-5678', 'sara.eriksson@example.com', 'Uppsalavägen 456', '11113', false);
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Oscar', 'Nilsson', 'Technician', 'Uppsala Station', '2023-05-15', '070-555-1234', 'oscar.nilsson@greenrental.com', 'Uppsalavägen 123', '11114', false);
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Jenny', 'Karlsson', 'Technician', 'Uppsala Station', '2024-05-11', '070-777-5678', 'sara.eriksson@greenrental.com', 'Uppsalavägen 555', '11115', false);

-- Insert staff data for Lund station
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Lars', 'J', 'Manager', "Lund station", '2024-01-01', '123-123-123', 'lars.j@greenrental.com', 'Lundvägen 222', '22220', false);
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Marcus', 'Svensson', 'Clerk', 'Lund Station', '2023-03-10', '070-123-4567', 'marcus.svensson@greenrental.com', 'Lundsgatan 123', '22221', false);
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Eva', 'Andersson', 'Clerk', 'Lund Station', '2023-06-15', '070-234-5678', 'eva.andersson@greenrental.com', 'Lundavägen 456', '22222', false);
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Jonas', 'Johansson', 'Technician', 'Lund Station', '2023-09-20', '070-345-6789', 'jonas.johansson@greenrental.com', 'Lundsvägen 789', '22223', false);
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Lisa', 'Pettersson', 'Technician', 'Lund Station', '2023-12-25', '070-456-7890', 'lisa.pettersson@greenrental.com', 'Lundagatan 987', '22224', false);

-- Insert staff data for Linköping station
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Dnyaz', 'AA', 'Manager', "Linköping station", '2024-01-01', '123-123-123', 'dnyaz.aa@greenrental.com', 'Linköpingsvägen 333', '33330', false);
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Anna', 'Karlsson', 'Clerk', 'Linköping Station', '2023-02-10', '070-111-2222', 'anna.karlsson@greenrental.com', 'Linköpingsgatan 123', '33331', false);
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Erik', 'Andersson', 'Clerk', 'Linköping Station', '2023-05-15', '070-222-3333', 'erik.andersson@greenrental.com', 'Linköpingsvägen 456', '33332', false);
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Malin', 'Nilsson', 'Technician', 'Linköping Station', '2023-08-20', '070-333-4444', 'malin.nilsson@greenrental.com', 'Linköpingsvägen 789', '33333', false);
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Andreas', 'Svensson', 'Technician', 'Linköping Station', '2023-11-25', '070-444-5555', 'andreas.svensson@greenrental.com', 'Linköpingsgatan 987', '33334', false);

-- Insert vehicle_category data
INSERT INTO vehicle_category (name, propellant, automatic, numberOfSeats, misc, costPerKm, price)
VALUES("Stadsbil", "El", true, 2, "", 25, 249);

INSERT INTO vehicle_category (name, propellant, automatic, numberOfSeats, misc, costPerKm, price)
VALUES("Liten", "Etanol", false, 5, "", 29, 349);

INSERT INTO vehicle_category (name, propellant, automatic, numberOfSeats, misc, costPerKm, price)
VALUES("Mellan", "El", true, 5, "Parkeringsfunktion", 39, 449);

INSERT INTO vehicle_category (name, propellant, automatic, numberOfSeats, misc, costPerKm, price)
VALUES("Kombi", "El", true, 7, "Dragkrok och backsystem", 49, 549);

INSERT INTO vehicle_category (name, propellant, automatic, numberOfSeats, misc, costPerKm, price)
VALUES("Minibuss", "Biogas", false, 9, "TV i taket", 59, 599);

INSERT INTO vehicle_category (name, propellant, automatic, numberOfSeats, misc, costPerKm, price)
VALUES("Transportbil", "Biogas", false, 2, "Kamera för övervakning av last", 39, 399);

-- Assign variables to be used instead of hardcoded values
SELECT vehicleCategoryId INTO @CatId_Stadsbil
FROM vehicle_category
WHERE name = 'Stadsbil';

SELECT vehicleCategoryId INTO @CatId_Liten
FROM vehicle_category
WHERE name = 'Liten';

SELECT vehicleCategoryId INTO @CatId_Mellan
FROM vehicle_category
WHERE name = 'Mellan';

SELECT vehicleCategoryId INTO @CatId_Kombi
FROM vehicle_category
WHERE name = 'Kombi';

SELECT vehicleCategoryId INTO @CatId_Minibuss
FROM vehicle_category
WHERE name = 'Minibuss';

SELECT vehicleCategoryId INTO @CatId_Transportbil
FROM vehicle_category
WHERE name = 'Transportbil';

-- Insert vehicle data for Uppsala station
INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("ABC123", @CatId_Stadsbil, "Uppsala station", "Smart EQ ForTwo");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AAC223", @CatId_Liten, "Uppsala station", "Ford Puma 1.0T");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AAB222", @CatId_Mellan, "Uppsala station", "Tesla Model S");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AAD123", @CatId_Mellan, "Uppsala station", "Volvo XC40");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("ADA321", @CatId_Mellan, "Uppsala station", "Volvo EX30");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("LLD914", @CatId_Kombi, "Uppsala station", "Volvo XC60");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("KBA321", @CatId_Kombi, "Uppsala station", "MG MG5 EV");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CAG461", @CatId_Minibuss, "Uppsala station", "Mercedes B200");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CWV737", @CatId_Transportbil, "Uppsala station", "WV California");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("SMM346", @CatId_Transportbil, "Uppsala station", "Mercedes Vito");

-- Insert vehicle data for Lund Station
INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CBA321",  @CatId_Stadsbil, "Lund station", "Mini Cooper");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("EDF774",  @CatId_Stadsbil, "Lund station", "Fiat 500");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("FED575", @CatId_Mellan, "Lund station", "Tesla Model S");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("KLT369", @CatId_Kombi, "Lund station", "Tesla Model X");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AKB465", @CatId_Kombi, "Lund station", "MG MG5 EV");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("WVC331", @CatId_Transportbil, "Lund station", "WV California");

-- Insert vehicle data for Linköping Station
INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("KLM963", @CatId_Stadsbil, "Linköping Station", "Kia Picanto");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("LKT752", @CatId_Stadsbil, "Linköping Station", "Toyota iQ");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CTS213", @CatId_Liten, "Linköping Station", "Citroën C1");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("RTP317", @CatId_Liten, "Linköping Station", "Citroën 2CV");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("VBX479", @CatId_Kombi, "Linköping Station", "Tesla Model X");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("LMD994", @CatId_Kombi, "Linköping Station", "Volvo XC60");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("SDL176", @CatId_Transportbil, "Linköping Station", "Mercedes Vito");

-- Insert business_customer dummy data
INSERT INTO business_customer (orgNumber, name, streetName, zipCode, city, country, invoiceStreetName, invoiceZipCode, invoiceCity, invoiceCountry, contactPerson, telephoneNumber, email)
VALUES ("716439-0093", "BRF Rökepipan", "Lyftvägen", "24755", "Dalby", "Sweden", "Lyftvägen", "24755", "Dalby", "Sweden", "Lars Jensen", "0705555555", "lars@rokepipan.se");

INSERT INTO business_customer (orgNumber, name, streetName, zipCode, city, country, invoiceStreetName, invoiceZipCode, invoiceCity, invoiceCountry, contactPerson, telephoneNumber, email)
VALUES ("556677-8901", "EcoTech AB", "Grönvägen", "54321", "Uppsala", "Sweden", "Grönvägen", "54321", "Uppsala", "Sweden", "Gunnar Ström", "0701234567", "gunnar@ecotech.com");

INSERT INTO business_customer (orgNumber, name, streetName, zipCode, city, country, invoiceStreetName, invoiceZipCode, invoiceCity, invoiceCountry, contactPerson, telephoneNumber, email)
VALUES ("789012-3456", "Wheels AB", "Däckvägen", "55677", "Borås", "Sweden", "Däckvägen", "55677", "Borås", "Sweden", "Nisse Klang", "0707654321", "klang@wheels.se");

INSERT INTO business_customer (orgNumber, name, streetName, zipCode, city, country, invoiceStreetName, invoiceZipCode, invoiceCity, invoiceCountry, contactPerson, telephoneNumber, email)
VALUES ("123456-7890", "TeknikHjälp AB", "Teknikvägen", "12345", "Stockholm", "Sweden", "Teknikvägen", "12345", "Stockholm", "Sweden", "Anna Teknik", "0701234567", "anna@teknikhjalp.se");

INSERT INTO business_customer (orgNumber, name, streetName, zipCode, city, country, invoiceStreetName, invoiceZipCode, invoiceCity, invoiceCountry, contactPerson, telephoneNumber, email)
VALUES ("987654-3210", "GreenGardens AB", "Trädgårdsgatan", "54321", "Göteborg", "Sweden", "Trädgårdsgatan", "54321", "Göteborg", "Sweden", "Erik Grönt", "0709876543", "erik@greengardens.se");

INSERT INTO business_customer (orgNumber, name, streetName, zipCode, city, country, invoiceStreetName, invoiceZipCode, invoiceCity, invoiceCountry, contactPerson, telephoneNumber, email)
VALUES ("456789-0123", "ByggMästarna AB", "Byggarevägen", "67890", "Malmö", "Sweden", "Byggarevägen", "67890", "Malmö", "Sweden", "Anders Byggare", "0704567890", "anders@byggmastarna.se");

INSERT INTO business_customer (orgNumber, name, streetName, zipCode, city, country, invoiceStreetName, invoiceZipCode, invoiceCity, invoiceCountry, contactPerson, telephoneNumber, email)
VALUES ("234567-8901", "Soltunna Energi AB", "Solgatan", "34567", "Uppsala", "Sweden", "Solgatan", "34567", "Uppsala", "Sweden", "Maria Solsson", "0702345678", "maria@soltunnaenergi.se");

-- Insert private_customer dummy data
INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('000610-1234', 'Max', 'Berggren', 'Havsvägen', '11233', 'Uppsala', 'Sweden', '0732235543', 'max.berg@gmal.se');

INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('900530-1234', 'Frida', 'Andersson', 'Äventyrsstigen', '12345', 'Lund', 'Sweden', '0732233555', 'frida123@hotmail.se');

INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('801103-1234', 'Saga', 'Nilsen', 'Sagovägen', '12345', 'Linköping', 'Sweden', '0733333333', 'nilsensaga@gmal.se');

INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('800502-1234', 'David', 'Johansson', 'Björkvägen', '54321', 'Göteborg', 'Sweden', '0709876543', 'david.johansson@hotmail.com');

INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('851015-9876', 'Emma', 'Andersson', 'Storgatan', '12345', 'Stockholm', 'Sweden', '0701234567', 'emma.andersson@msn.com');

INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('950710-2345', 'Erik', 'Persson', 'Liljevägen', '98765', 'Uppsala', 'Sweden', '0702345678', 'erik.persson@altavista.com');

INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('900304-5678', 'Anna', 'Lundgren', 'Äppelvägen', '67890', 'Malmö', 'Sweden', '0703456789', 'anna.lundgren@gmal.com');

INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('920415-5678', 'Lisa', 'Andersson', 'Sjövägen', '22333', 'Stockholm', 'Sweden', '0701234567', 'lisa.andersson@altavista.com');

INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('850710-9876', 'Erik', 'Svensson', 'Skogsgatan', '33444', 'Göteborg', 'Sweden', '0709876543', 'erik.svensson@msn.com');

INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('900304-2345', 'Anna', 'Johansson', 'Parkvägen', '44555', 'Malmö', 'Sweden', '0702345678', 'anna.johansson@hotmail.com');

INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('950210-7890', 'Peter', 'Nilsson', 'Bergsgatan', '55666', 'Uppsala', 'Sweden', '0703456789', 'peter.nilsson@gmail.com');

INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('880815-3456', 'Sara', 'Karlsson', 'Strandvägen', '66777', 'Linköping', 'Sweden', '0704567890', 'sara.karlsson@msn.com');

INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('910510-6789', 'Jonas', 'Persson', 'Trädgårdsgatan', '77888', 'Örebro', 'Sweden', '0705678901', 'jonas.persson@yahoo.com');

INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('960925-1234', 'Emma', 'Gustafsson', 'Ängsvägen', '88999', 'Jönköping', 'Sweden', '0706789012', 'emma.gustafsson@altavista.com');

INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('930320-4567', 'Anders', 'Larsson', 'Björkvägen', '99000', 'Västerås', 'Sweden', '0707890123', 'anders.larsson@yahoo.com');

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
WHERE orgNumber = @EcoTech
AND startDate = "2024-01-01"
AND endDate = "2024-02-01";

-- Insert agreement data
INSERT INTO agreement (bookingNumber, datum, orderingParty)
VALUES (@RökepipanBooking, "2024-04-10", "@TODO");

INSERT INTO agreement (bookingNumber, datum, orderingParty)
VALUES (@TeknikHjälpBooking, "2023-11-14", "@TODO");

INSERT INTO agreement (bookingNumber, datum, orderingParty)
VALUES (@ByggMästarnaBooking, "2023-05-01", "@TODO");

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

-- Assign personalIdentificationNumber to variables instead of hardcoded values
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

-- Insert offer data
INSERT INTO offer (descriptionOffer, startDatum, endDatum, freeMileage, discount)
VALUES ("Weekendresa", "2023-07-29", "2023-07-30", 50, 199);

INSERT INTO offer (descriptionOffer, startDatum, endDatum, freeMileage, discount)
VALUES ("Familjeresa", "2024-04-01", "2024-04-07", 100, 399);

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

INSERT INTO booking (stationName, personalIdentificationNumber, offerID, startDate, endDate, commentBooking, driverLicenseCheck, cost)
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

INSERT INTO booking (stationName, personalIdentificationNumber, offerID, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", @AnnaJ, @Familjeresa, "2024-04-01", "2024-04-07", "Veckobokning", True, 1497);

INSERT INTO booking (stationName, personalIdentificationNumber, offerID, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @PeterN, @Weekendresa, "2023-07-29", "2023-07-30", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @SaraK, "2024-04-27", "2024-04-28", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDate, endDate, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", @JonasP, "2024-07-27", "2024-07-28", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, offerID, startDate, endDate, commentBooking, driverLicenseCheck, cost)
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

-- Assign staffId to variables instead of hardcoded values
SELECT staffID INTO @Sara
FROM staff
WHERE firstName = 'Sara' AND lastName = 'Eriksson';

SELECT staffID INTO @Oscar
FROM staff
WHERE firstName = 'Oscar' AND lastName = 'Nilsson';

SELECT staffID INTO @Eva
FROM staff
WHERE firstName = 'Eva' AND lastName = 'Andersson';

SELECT staffID INTO @Jonas
FROM staff
WHERE firstName = 'Jonas' AND lastName = 'Johansson';

SELECT staffID INTO @Anna
FROM staff
WHERE firstName = 'Anna' AND lastName = 'Karlsson';

SELECT staffID INTO @Andreas
FROM staff
WHERE firstName = 'Andreas' AND lastName = 'Svensson';

-- Insert report data
INSERT INTO report (registrationNumber, staffID, datum, descriptionReport)
VALUES ("AAB222", @Sara, "2024-11-21", "Stenskott");

INSERT INTO report (registrationNumber, staffID, datum, descriptionReport)
VALUES ("AKB465", @Eva, "2023-05-07", "Punktering");

INSERT INTO report (registrationNumber, staffID, datum, descriptionReport)
VALUES ("VBX479", @Anna, "2024-02-01", "Repa");

-- Insert initial large vehicle control data for car located at Uppsala station
INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("ABC123", @Oscar, "2022-06-01", true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AAC223", @Oscar, "2022-06-01", true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AAB222", @Oscar, "2022-06-01", true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AAD123", @Oscar, "2022-06-01", true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("ADA321", @Oscar, "2022-06-01", true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("LLD914", @Oscar, "2022-06-01", true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("KBA321", @Oscar, "2022-06-01", true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CAG461", @Oscar, "2022-06-01", true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CWV737", @Oscar, "2022-06-01", true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("SMM346", @Oscar, "2022-06-01", true, 100);

-- Insert initial large vehicle control data for car located at Lund Station
INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CBA321",  @Jonas, "2022-06-01", true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("EDF774",  @Jonas, "2022-06-01", true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("FED575", @Jonas, "2022-06-01", true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("KLT369", @Jonas, "2022-06-01", true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AKB465", @Jonas, "2022-06-01", true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("WVC331", @Jonas, "2022-06-01", true, 100);

-- Insert initial large vehicle control data for car located at Linköping Station
INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("KLM963", @Andreas, "2022-06-01", true, 100);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("LKT752", @Andreas, "2022-06-01", true, 100);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("CTS213", @Andreas, "2022-06-01", true, 100);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("RTP317", @Andreas, "2022-06-01", true, 100);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("VBX479", @Andreas, "2022-06-01", true, 100);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("LMD994", @Andreas, "2022-06-01", true, 100);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("SDL176", @Andreas, "2022-06-01", true, 100);

-- Insert 2nd (18month) large vehicle control data for car located at Uppsala station
INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("ABC123", @Oscar, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AAC223", @Oscar, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AAB222", @Oscar, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AAD123", @Oscar, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("ADA321", @Oscar, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("LLD914", @Oscar, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("KBA321", @Oscar, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CAG461", @Oscar, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CWV737", @Oscar, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("SMM346", @Oscar, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

-- Insert 2nd (18month) large vehicle control data for car located at Lund Station
INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CBA321",  @Jonas, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("EDF774",  @Jonas, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("FED575", @Jonas, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("KLT369", @Jonas, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AKB465", @Jonas, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("WVC331", @Jonas, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

-- Insert 2nd (18month) large vehicle control data for car located at Linköping Station
INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("KLM963", @Andreas, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("LKT752", @Andreas, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("CTS213", @Andreas, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("RTP317", @Andreas, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("VBX479", @Andreas, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("LMD994", @Andreas, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("SDL176", @Andreas, DATE_ADD("2022-06-01", INTERVAL 18 MONTH), true, 100);

-- Insert small vehicle control data after a booking, for cars located at Uppsala station
INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("ADA321", @Jenny, "2024-11-21", false, 25);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("CAG461", @Jenny, "2024-02-18", false, 50);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("AAD123", @Jenny, "2024-07-01", false, 75);

-- Insert small vehicle control data after a booking, for cars located at Lund Station
INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("KLT369", @Lisa, "2024-04-12", false, 25);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("CBA321", @Lisa, "2023-05-07", false, 50);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("WVC331", @Lisa, "2024-05-31", false, 75);

-- Insert small vehicle control data after a booking, for cars located at Linköping Station
INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("KLM963", @Malin, "2023-03-30", false, 25);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("SDL176", @Malin, "2023-05-07", false, 50);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("LMD994", @Malin, "2024-02-01", false, 75);

-- Assign controlID to variables instead of hardcoded values
SELECT controlID INTO @CAG461Ctrl
FROM control
WHERE registrationNumber = 'CAG461';

SELECT controlID INTO @AKB465Ctrl
FROM control
WHERE registrationNumber = 'AKB465';

SELECT controlID INTO @SDL176Ctrl
FROM control
WHERE registrationNumber = 'SDL176';

-- Insert damage data
INSERT INTO damage (controlID, fixedDamage, repairedDate, descriptionDamage)
VALUES (@CAG461Ctrl, true, "2024-03-15", "Byte vindrutetorkare");

INSERT INTO damage (controlID, fixedDamage, repairedDate, descriptionDamage)
VALUES (@AKB465Ctrl, true, "2024-06-15", "Kantstött fälg");

INSERT INTO damage (controlID, fixedDamage, descriptionDamage)
VALUES (@SDL176Ctrl, false, "Byte kamrem");

-- Verify that the data is correctly injected
SELECT * FROM station;
SELECT * FROM staff;
SELECT * FROM vehicle;
SELECT * FROM vehicle_category;
SELECT * FROM business_customer;
SELECT * FROM private_customer;
SELECT * FROM agreement;
SELECT * FROM offer;
SELECT * FROM booking;
SELECT * FROM booking_details;
SELECT * FROM invoice;
SELECT * FROM report;
SELECT * FROM control;
SELECT * FROM damage;