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
DESCRIBE business_customer;
DESCRIBE private_customer;

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