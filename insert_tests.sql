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

-- List all databases, verify GreenRental exists!
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
DESCRIBE contract;
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

SELECT * FROM vehicle_category;


-- Insert vehicle dummy data
INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("ABC123", 1, "Uppsala Station", "Smart EQ ForTwo");

SELECT * FROM vehicle;