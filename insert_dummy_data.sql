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
DESCRIBE station;
DESCRIBE staff;
DESCRIBE vehicle;
DESCRIBE vehicle_category;
DESCRIBE report;
DESCRIBE control;
DESCRIBE damage;
DESCRIBE booking;
DESCRIBE booking_details;
DESCRIBE invoice;
DESCRIBE agreement;
DESCRIBE offer;
DESCRIBE business_customer;
DESCRIBE private_customer;

-- Insert station dummy data
INSERT INTO station (stationName, streetName, zipCode, country, city)
VALUES ('Uppsala station', 'Uppsalavägen 111', '11111', 'SWE', 'Uppsala');
INSERT INTO station (stationName, streetName, zipCode, country, city)
VALUES ('Lund station', 'Lundvägen 222', '22222', 'SWE', 'Lund');
INSERT INTO station (stationName, streetName, zipCode, country, city)
VALUES ('Linköping station', 'Linköpingsvägen 333', '33333', 'SWE', 'Linköping');

-- Validate the station entries
SELECT * FROM station;

-- Insert staff dummy data
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Emelie', 'W', 'Manager', "Uppsala Station", '2024-01-01', '123-123-123', 'emelie.w@greenrental.com', 'Uppsalavägen 111', '11111', false);
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Ingrid', 'H', 'Manager', "Uppsala Station", '2024-01-01', '123-123-123', 'ingrid.h@greenrental.com', 'Uppsalavägen 111', '11111', false);
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Lars', 'J', 'Manager', "Lund station", '2024-01-01', '123-123-123', 'lars.j@greenrental.com', 'Lundvägen 222', '22222', false);
INSERT INTO staff (firstName, lastName, title, stationName, hiringDate, telephoneNumber, email, streetName, zipCode, quit)
VALUES ('Dnyaz', 'AA', 'Manager', "Linköping station", '2024-01-01', '123-123-123', 'dnyaz.aa@greenrental.com', 'Linköpingsvägen 333', '33333', false);

-- Validate the staff entries
SELECT * FROM staff;

-- Insert vehicle_category dummy data
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

-- Validate the vehicle_category entries
SELECT * FROM vehicle_category;

-- Insert vehicle dummy data for Uppsala station
INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("ABC123", 1, "Uppsala station", "Smart EQ ForTwo");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AAC223", 2, "Uppsala station", "Ford Puma 1.0T");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AAB222", 3, "Uppsala station", "Tesla Model S");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AAD123", 3, "Uppsala station", "Volvo XC40");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("ADA321", 3, "Uppsala station", "Volvo EX30");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("LLD914", 4, "Uppsala station", "Volvo XC60");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("KBA321", 4, "Uppsala station", "MG MG5 EV");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CAG461", 5, "Uppsala station", "Mercedes B200");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CWV737", 6, "Uppsala station", "WV California");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("SMM346", 6, "Uppsala station", "Mercedes Vito");

-- Select all vehicles for Uppsala station
SELECT * FROM vehicle
WHERE stationName = "Uppsala station";

-- Insert vehicle dummy data for Lund Station
INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CBA321", 1, "Lund station", "Mini Cooper");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("EDF774", 1, "Lund station", "Fiat 500");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("FED575", 3, "Lund station", "Tesla Model S");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("KLT369", 4, "Lund station", "Tesla Model X");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AKB465", 4, "Lund station", "MG MG5 EV");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("WVC331", 6, "Lund station", "WV California");

-- Select all vehicles for Lund Station
SELECT * FROM vehicle
WHERE stationName = "Lund station";

-- Insert vehicle dummy data for Linköping Station Toyota iQ
INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("KLM963", 1, "Linköping Station", "Kia Picanto");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("LKT752", 1, "Linköping Station", "Toyota iQ");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CTS213", 2, "Linköping Station", "Citroën C1");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("RTP317", 2, "Linköping Station", "Citroën 2CV");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("VBX479", 4, "Linköping Station", "Tesla Model X");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("LMD994", 4, "Linköping Station", "Volvo XC60");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("SDL176", 6, "Linköping Station", "Mercedes Vito");

-- Select all vehicles for Linköping Station
SELECT * FROM vehicle
WHERE stationName = "Linköping station";

-- Validate all the vehicle entries
-- SELECT * FROM vehicle;

-- Insert business_customer dummy data
INSERT INTO business_customer (orgNumber, name, streetName, zipCode, city, country, invoiceStreetName, invoiceZipCode, invoiceCity, invoiceCountry, contactPerson, telephoneNumber, email)
VALUES ("716439-0093", "BRF Rökepipan", "Lyftvägen", "24755", "Dalby", "Sweden", "Lyftvägen", "24755", "Dalby", "Sweden", "Lars Jensen", "0705555555", "lars@rokepipan.se");

INSERT INTO business_customer (orgNumber, name, streetName, zipCode, city, country, invoiceStreetName, invoiceZipCode, invoiceCity, invoiceCountry, contactPerson, telephoneNumber, email)
VALUES ("556677-8901", "EcoTech AB", "Grönvägen", "54321", "Uppsala", "Sweden", "Grönvägen", "54321", "Uppsala", "Sweden", "Gunnar Ström", "0701234567", "gunnar@ecotech.com");

INSERT INTO business_customer (orgNumber, name, streetName, zipCode, city, country, invoiceStreetName, invoiceZipCode, invoiceCity, invoiceCountry, contactPerson, telephoneNumber, email)
VALUES ("789012-3456", "Wheels AB", "Stångvägen", "55677", "Borås", "Sweden", "Stångvägen", "55677", "Borås", "Sweden", "Nisse Klang", "0707654321", "klang@wheels.se");

SELECT * FROM business_customer;

-- Insert Booking dummy data (business_customer)
INSERT INTO booking (stationName, orgNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", "716439-0093", "2024-04-10", "2024-04-12", "Test Comment", True, 998);

INSERT INTO booking (stationName, orgNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Uppsala station", "556677-8901", "2024-05-01", "2024-05-07", "Veckobokning", True, 3493);

INSERT INTO booking (stationName, orgNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", "789012-3456", "2024-05-01", "2024-05-31", "Månadsbokning", True, 9999);

-- Insert private_customer dummy data
INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('000610-1234', 'Max', 'Berggren', 'Havsvägen', '11233', 'Uppsala', 'Sweden', '0732235543', 'max.berg@gmal.se');

INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('900530-1234', 'Frida', 'Andersson', 'Äventyrsstigen', '12345', 'Lund', 'Sweden', '0732233555', 'frida123@gmal.se');

INSERT INTO private_customer (personalIdentificationNumber, firstName, lastName, streetName, zipCode, city, country, telephone, email)
VALUES ('801103-1234', 'Saga', 'Nilsen', 'Sagovägen', '12345', 'Linköping', 'Sweden', '0733333333', 'nilsensaga@gmal.se');

-- Insert Booking dummy data (private_customer)
INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Lund station", "000610-1234", "2024-05-01", "2024-05-03", "Test Comment", True, 1497);

INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Uppsala station", "900530-1234", "2024-05-04", "2024-05-05", "Weekendbokning", True, 998);

INSERT INTO booking (stationName, personalIdentificationNumber, startDatum, endDatum, commentBooking, driverLicenseCheck, cost)
VALUES("Linköping station", "801103-1234", "2024-05-25", "2024-05-26", "Weekendbokning", True, 998);

-- Insert offer dummy data

SELECT * FROM booking;

INSERT INTO booking_details (bookingNumber, registrationNumber)
VALUES (1, "ABC123");

SELECT * FROM booking_details;