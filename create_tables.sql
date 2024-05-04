CREATE DATABASE green_rental COLLATE latin1_swedish_ci;
USE green_rental;

CREATE TABLE green_rental.station (
    stationName VARCHAR(50) PRIMARY KEY,
    streetName VARCHAR(50),
    zipCode VARCHAR(10),
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE green_rental.vehicle_category(
	vehicleCategoryId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    propellant VARCHAR(50) NOT NULL,
    automatic BOOL,
    numberOfSeats INT NOT NULL, -- Do we want default value instead?
    misc VARCHAR(50),
    costPerKm FLOAT NOT NULL,
    price FLOAT NOT NULL
);

CREATE TABLE green_rental.vehicle (
  registrationNumber VARCHAR(6) NOT NULL PRIMARY KEY,
  stationName VARCHAR(50) NOT NULL,
  vehicleCategoryId INT NOT NULL,
  model VARCHAR(32) NOT NULL,
  FOREIGN KEY (stationName) REFERENCES station(stationName)
  ON DELETE NO ACTION -- Create test for this
  ON UPDATE NO ACTION,
  FOREIGN KEY (vehicleCategoryId) REFERENCES vehicle_category(vehicleCategoryId)
  ON DELETE NO ACTION -- Create test for this
  ON UPDATE NO ACTION
);

CREATE TABLE green_rental.staff (
    staffID INT AUTO_INCREMENT PRIMARY KEY,
    stationName VARCHAR(50),
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    streetName VARCHAR(50),
    zipCode VARCHAR(10),
    city VARCHAR(50),
    telephoneNumber VARCHAR(25),
    email VARCHAR(50),
    title VARCHAR(50),
    hiringDate DATETIME,
    quit BOOL,
    FOREIGN KEY (stationName) REFERENCES station(stationName)
);
CREATE TABLE green_rental.report (
    reportID INT AUTO_INCREMENT PRIMARY KEY,
    registrationNumber VARCHAR(6),
    staffID INT,
    datum DATETIME,
    descriptionReport VARCHAR(512),
    FOREIGN KEY (registrationNumber) REFERENCES vehicle(registrationNumber),
    FOREIGN KEY (staffID) REFERENCES staff(staffID)
);

CREATE TABLE green_rental.control (
    controlID INT AUTO_INCREMENT PRIMARY KEY,
    registrationNumber VARCHAR(6),
    staffID INT,
    controlDate DATETIME,
    controlLarge BOOL,
    fuelLevel INT,
    FOREIGN KEY (registrationNumber) REFERENCES vehicle(registrationNumber),
    FOREIGN KEY (staffID) REFERENCES staff(staffID)
);

CREATE TABLE green_rental.damage (
    damageID INT AUTO_INCREMENT PRIMARY KEY,
    controlID INT,
    fixedDamage BOOL,
    repairedDate DATETIME,
    descriptionDamage VARCHAR(512),
    FOREIGN KEY (controlID) REFERENCES control(controlID)
);

CREATE TABLE green_rental.business_customer (
    orgNumber VARCHAR(11) PRIMARY KEY,
    name VARCHAR(50),
    streetName VARCHAR(50),
    zipCode VARCHAR(10),
    city VARCHAR(50),
    country VARCHAR(50),
    invoiceStreetName VARCHAR(50),
    invoiceZipCode VARCHAR(10),
    invoiceCity VARCHAR(50),
    invoiceCountry VARCHAR(50),
    contactPerson VARCHAR(50),
    telephoneNumber VARCHAR(25),
    email VARCHAR(50)
);

CREATE TABLE green_rental.private_customer (
    personalIdentificationNumber VARCHAR(13) PRIMARY KEY,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    streetName VARCHAR(50),
    zipCode VARCHAR(10),
    city VARCHAR(50),
    country VARCHAR(50),
    telephone VARCHAR(25),
    email VARCHAR(50)
);

CREATE TABLE green_rental.offer (
    offerID INT AUTO_INCREMENT PRIMARY KEY,
    descriptionOffer VARCHAR(256),
    startDatum DATETIME,
    endDatum DATETIME,
    freeMileage INT,
    discount INT
);

CREATE TABLE green_rental.booking (
    bookingNumber INT AUTO_INCREMENT PRIMARY KEY,
    stationName VARCHAR(50),
    orgNumber VARCHAR(11),
    personalIdentificationNumber VARCHAR(255),
    offerID INT,
    startDate DATETIME,
    endDate DATETIME,
    commentBooking VARCHAR(512),
    driverLicenseCheck BOOL,
    cost FLOAT,
    FOREIGN KEY (stationName) REFERENCES station(stationName),
    FOREIGN KEY (orgNumber) REFERENCES business_customer(orgNumber),
    FOREIGN KEY (personalIdentificationNumber) REFERENCES private_customer(personalIdentificationNumber),
    FOREIGN KEY (offerID) REFERENCES offer(offerID)
);

CREATE TABLE green_rental.booking_details (
    bookingDetailsID INT AUTO_INCREMENT PRIMARY KEY,
    bookingNumber INT,
    registrationNumber VARCHAR(6),
    FOREIGN KEY (bookingNumber) REFERENCES booking(bookingNumber),
    FOREIGN KEY (registrationNumber) REFERENCES vehicle(registrationNumber)
);

CREATE TABLE green_rental.agreement (
    agreementID INT AUTO_INCREMENT PRIMARY KEY,
    bookingNumber INT,
    datum DATETIME,
    orderingParty VARCHAR(100),
    FOREIGN KEY (bookingNumber) REFERENCES booking(bookingNumber)
);

CREATE TABLE green_rental.invoice (
    invoiceNumber INT AUTO_INCREMENT PRIMARY KEY,
    bookingNumber INT,
    invoiceSum FLOAT,
    datum DATETIME,
    dueDate DATETIME,
    paid BOOL,
    FOREIGN KEY (bookingNumber) REFERENCES booking(bookingNumber)
);
