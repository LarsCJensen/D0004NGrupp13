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
DESCRIBE station;
DESCRIBE staff;
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
INSERT INTO staff (firstName, lastName, title, stationId, employmentDate, phoneNo, email, streetName, zipCode, country, employed)
VALUES ('Emelie', 'W', 'Manager', 1, '2024-01-01', '123-123-123', 'emelie.w@greenrental.com', 'Uppsalavägen 111', '11111', 'SWE', TRUE);
INSERT INTO staff (firstName, lastName, title, stationId, employmentDate, phoneNo, email, streetName, zipCode, country, employed)
VALUES ('Ingrid', 'H', 'Manager', 1, '2024-01-01', '123-123-123', 'ingrid.h@greenrental.com', 'Uppsalavägen 111', '11111', 'SWE', TRUE);
INSERT INTO staff (firstName, lastName, title, stationId, employmentDate, phoneNo, email, streetName, zipCode, country, employed)
VALUES ('Lars', 'J', 'Manager', 2, '2024-01-01', '123-123-123', 'lars.j@greenrental.com', 'Lundvägen 222', '22222', 'SWE', TRUE);
INSERT INTO staff (firstName, lastName, title, stationId, employmentDate, phoneNo, email, streetName, zipCode, country, employed)
VALUES ('Dnyaz', 'AA', 'Manager', 3, '2024-01-01', '123-123-123', 'dnyaz.aa@greenrental.com', 'Linköpingsvägen 333', '33333', 'SWE', TRUE);

-- Validate the staff entries
SELECT * FROM staff;