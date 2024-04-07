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
USE GreenRental;

-- List each table of Green Rental
DESCRIBE Station;
DESCRIBE Employee;
DESCRIBE Vehicle;
DESCRIBE VehicleCategory;
DESCRIBE ErrorReports;
DESCRIBE Inspection;
DESCRIBE Damage;
DESCRIBE Booking;
DESCRIBE BookingDetails;
DESCRIBE Invoice;
DESCRIBE Agreement;
DESCRIBE Offer;
DESCRIBE BCustomer;
DESCRIBE PCustomer;

SELECT * FROM station;

INSERT INTO station (stationName, streetName, zipCode, city, country)
VALUES ("TestStation", "Test Street", "123 12", "Test City", "Test Country");

INSERT INTO station (stationName, streetName)
VALUES("TestStation2", "Test Street2");

INSERT INTO station
VALUES ("TestStation 3", "Test Street ", "321 21", "Test City 3", "Test Country 3");

INSERT INTO station (stationName, streetName)
VALUES("TestStationÖ", "Test StreetÖ");

-- Insert Station dummy data
INSERT INTO Station (stationName, address, zipCode, country, city)
VALUES ('Uppsala Station', 'Uppsalavägen 111', '11111', 'SWE', 'Uppsala');
INSERT INTO Station (stationName, address, zipCode, country, city)
VALUES ('Lund Station', 'Lundvägen 222', '22222', 'SWE', 'Lund');
INSERT INTO Station (stationName, address, zipCode, country, city)
VALUES ('Linköping Station', 'Linköpingsvägen 333', '33333', 'SWE', 'Linköping');

-- Validate the Station entries
SELECT * FROM Station;

-- Insert Employee dummy data
INSERT INTO Employee (firstName, lastName, role, stationId, employmentDate, phoneNo, email, address, zipCode, country, employed)
VALUES ('Emelie', 'W', 'Manager', 1, '2024-01-01', '123-123-123', 'emelie.w@greenrental.com', 'Uppsalavägen 111', '11111', 'SWE', TRUE);
INSERT INTO Employee (firstName, lastName, role, stationId, employmentDate, phoneNo, email, address, zipCode, country, employed)
VALUES ('Ingrid', 'H', 'Manager', 1, '2024-01-01', '123-123-123', 'ingrid.h@greenrental.com', 'Uppsalavägen 111', '11111', 'SWE', TRUE);
INSERT INTO Employee (firstName, lastName, role, stationId, employmentDate, phoneNo, email, address, zipCode, country, employed)
VALUES ('Lars', 'J', 'Manager', 2, '2024-01-01', '123-123-123', 'lars.j@greenrental.com', 'Lundvägen 222', '22222', 'SWE', TRUE);
INSERT INTO Employee (firstName, lastName, role, stationId, employmentDate, phoneNo, email, address, zipCode, country, employed)
VALUES ('Dnyaz', 'AA', 'Manager', 3, '2024-01-01', '123-123-123', 'dnyaz.aa@greenrental.com', 'Linköpingsvägen 333', '33333', 'SWE', TRUE);

-- Validate the Employee entries
SELECT * FROM Employee;