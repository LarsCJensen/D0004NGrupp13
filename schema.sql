/* @author Dnyaz Ali Ahmet
 * @date 2024-04-05
 *
 * This file is used to declare each table
 * and their relationships to each other
 * for the fictive company Green Rental.
 */

-- Database creation for Green Rental
-- COLLATE rule used for character set
CREATE DATABASE GreenRental COLLATE latin1_swedish_ci;

-- "station" stores info about each Green Rental station
-- PK: stationId
-- FK: ...
CREATE TABLE Station (
    stationId INT AUTO_INCREMENT NOT NULL,
    stationName VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    zipCode VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    -- PK
    PRIMARY KEY (stationId)
);

/* **************** *
 * LEFT OF STATION  *
 * **************** */

-- "employee" stores info about each employee
-- PK: employeeId
-- FK: stationId -> station(stationId)
CREATE TABLE Employee (
    employeeId INT AUTO_INCREMENT NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    role VARCHAR(255) NOT NULL,
    stationId INT NOT NULL,
    employmentDate DATE NOT NULL,
    phoneNo VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    zipCode VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    employed BOOL NOT NULL,
    -- PK
    PRIMARY KEY (employeeId)
    -- FK
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
);

-- "vehicle" stores info about each vehicle
-- PK: licensePlate
-- FK: vehicleCatId -> vehicle_category(vehicleCatId)
--     stationName  -> station(stationName)
CREATE TABLE Vehicle (
    licensePlate VARCHAR(6) NOT NULL,
    vehicleCatId INT NOT NULL,
    stationName VARCHAR(255) NOT NULL,
    brand VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    -- PK
    PRIMARY KEY (licensePlate)
    -- FK
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
);

-- "vehicleCat" stores info about each vehicle type
-- PK: vehicleCatId
-- FK: ...
CREATE TABLE VehicleCategory (
    vehicleCatId INT AUTO_INCREMENT NOT NULL,
    catName VARCHAR(255) NOT NULL,
    startPrice FLOAT NOT NULL,
    pricePerKm FLOAT NOT NULL,
    propellant VARCHAR(255) NOT NULL,
    autoGear BOOL NOT NULL,
    seats INT NOT NULL,
    misc VARCHAR(255) NOT NULL,
    -- PK
    PRIMARY KEY (vehicleCatId)
);

-- "ErrorReports" stores info about each vehicle error
-- PK: reportId
-- FK: licensePlate -> Vehicle(licensePlate)
--     employeeId   -> Employee(employeeId)
CREATE TABLE ErrorReports (
    reportId INT AUTO_INCREMENT NOT NULL,
    licensePlate VARCHAR(6) NOT NULL,
    employeeId INT NOT NULL,
    reportDate DATE NOT NULL,
    reportDesc VARCHAR(255) NOT NULL,
    -- PK
    PRIMARY KEY (reportId)
    -- FK
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
);

-- "Inspection" stores info about each vehicle inspection type
-- PK: reportId
-- FK: licensePlate -> Vehicle(licensePlate)
--     employeeId   -> Employee(employeeId)
CREATE TABLE Inspection (
    inspectId INT AUTO_INCREMENT NOT NULL,
    licensePlate VARCHAR(6) NOT NULL,
    employeeId INT NOT NULL,
    inspectDate DATE NOT NULL,
    fullInspect BOOL NOT NULL,
    mileage INT NOT NULL,
    -- PK
    PRIMARY KEY (inspectId)
    -- FK
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
);

-- "Damage" stores info about a specific vehicle damage
-- PK: damageId
-- FK: inspectId -> Inspection(inspectId)
CREATE TABLE Damage (
    damageId INT AUTO_INCREMENT NOT NULL,
    inspectId INT NOT NULL,
    repaired BOOL NOT NULL,
    repairedDate DATE NOT NULL,
    damageDesc VARCHAR(255) NOT NULL,
    -- PK
    PRIMARY KEY (damageId)
    -- FK
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
);

/* **************** *
 * RIGHT OF STATION *
 * **************** */

 -- "Booking" stores info about each type of booking
-- PK: bookId
-- FK: stationId -> Station(stationId)
--     orgNr     -> BCustomer(orgNr)
--     socNr     -> PCustomer(socNr)
--     offerId   -> Offer(offerId)
CREATE TABLE Booking (
    bookId INT AUTO_INCREMENT NOT NULL,
    stationId INT NOT NULL,
    orgNr INT NOT NULL,
    socNr INT NOT NULL,
    offerId INT NOT NULL,
    startBook DATETIME NOT NULL,
    endBook DATETIME NOT NULL,
    licenseCtrl BOOL NOT NULL,
    price FLOAT NOT NULL,
    bookDesc VARCHAR(255) NOT NULL,
    -- PK
    PRIMARY KEY (bookId)
    -- FK
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
);

 -- "BookingDetails" stores details about each type of booking
-- PK: bookDetId
-- FK: bookId       -> Booking(bookId)
--     licensePlate -> Vehicle(licensePlate)
CREATE TABLE BookingDetails (
    bookDetId INT AUTO_INCREMENT NOT NULL,
    bookId INT NOT NULL,
    licensePlate VARCHAR(6) NOT NULL,
    -- PK
    PRIMARY KEY (bookDetId)
    -- FK
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
);

-- "Invoice" stores info about each booking invoice
-- PK: invoiceId
-- FK: bookId -> Booking(bookId)
CREATE TABLE Invoice (
    invoiceId INT AUTO_INCREMENT NOT NULL,
    bookId INT NOT NULL,
    price FLOAT NOT NULL,
    vat FLOAT NOT NULL,
    invoiceDate DATE NOT NULL,
    dueDate DATE NOT NULL,
    paid BOOL NOT NULL,
    -- PK
    PRIMARY KEY (invoiceId)
    -- FK
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
);

-- "Agreement" stores info about each booking agreement
-- PK: agreeId
-- FK: bookId -> Booking(bookId)
CREATE TABLE Agreement (
    agreeId INT AUTO_INCREMENT NOT NULL,
    bookId INT NOT NULL,
    customer VARCHAR(255) NOT NULL,
    agreeDate DATE NOT NULL,
    -- PK
    PRIMARY KEY (agreeId)
    -- FK
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
);

-- "Offer" stores info about each booking offer
-- PK: agreeId
-- FK: bookId -> Booking(bookId)
CREATE TABLE Offer (
    offerId INT AUTO_INCREMENT NOT NULL,
    startDate DATETIME NOT NULL,
    endDate DATETIME NOT NULL,
    freeMileage INT NOT NULL,
    discount INT NOT NULL,
    offerDesc VARCHAR(255) NOT NULL,
    -- PK
    PRIMARY KEY (offerId)
    -- FK
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
);

-- "BCustomer" stores info about each business customer
-- PK: orgNr
-- FK: ...
CREATE TABLE BCustomer (
    orgNr INT NOT NULL,
    address VARCHAR(255) NOT NULL,
    zipCode VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    invoiceAddress VARCHAR(255) NOT NULL,
    invoiceZipCode VARCHAR(255) NOT NULL,
    invoiceCountry VARCHAR(255) NOT NULL,
    invoiceCity VARCHAR(255) NOT NULL,
    contactInfo VARCHAR(255) NOT NULL,
    phoneNo VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    -- PK
    PRIMARY KEY (orgNr)
    -- FK
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
);

-- "PCustomer" stores info about each private customer
-- PK: socNr
-- FK: ...
CREATE TABLE PCustomer (
    socNr INT NOT NULL,
    firstName VARCHAR(255) DEFAULT 0 NOT NULL,
    lastName VARCHAR(255) DEFAULT 0 NOT NULL,
    address VARCHAR(255) NOT NULL,
    zipCode VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    phoneNo VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    -- PK
    PRIMARY KEY (socNr)
    -- FK
    -- FOREIGN KEY <attribute> REFERENCES <table>(<attribute>)
);