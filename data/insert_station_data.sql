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