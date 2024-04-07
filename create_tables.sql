CREATE DATABASE green_rental COLLATE latin1_swedish_ci;

-- MySQL ignores capital letters, so keeping them lower case
CREATE TABLE greenrental.station (
  stationName VARCHAR(50) NOT NULL PRIMARY KEY,
  streetName VARCHAR(50) NOT NULL,
  zipCode VARCHAR(10) NULL,
  city VARCHAR(50) NULL,
  country VARCHAR(50) NULL  
);

CREATE TABLE greenrental.vehicle_category(
	vehicleCategoryId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    propellant VARCHAR(50) NOT NULL,
    automatic BOOL,
    numberOfSeats INT NOT NULL, -- Do we want default value instead?
    misc VARCHAR(50),
    costPerKm FLOAT NOT NULL,
    price FLOAT NOT NULL
);

CREATE TABLE greenrental.vehicle (
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


# test
CREATE DATABASE green_rental;

CREATE TABLE staff (
    staffID INT PRIMARY KEY,
    stationId INT,
    preName VARCHAR(50),
    surName VARCHAR(50),
    streetName VARCHAR(50),
    zipCode VARCHAR(10),
    city VARCHAR(50),
    telephoneNumber VARCHAR(25),
    email VARCHAR(50),
    title VARCHAR(50),
    hiringDate DATETIME,
    quit BOOL,
    FOREIGN KEY (stationId) REFERENCES Station(stationId)
);

CREATE TABLE vehicle_category(
	vehicleCategoryId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    propellant VARCHAR(50) NOT NULL,
    automatic BOOL,
    numberOfSeats INT NOT NULL, -- Do we want default value instead?
    misc VARCHAR(50),
    costPerKm FLOAT NOT NULL,
    price FLOAT NOT NULL
);

CREATE TABLE vehicle (
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

CREATE TABLE report (
    reportID INT PRIMARY KEY,
    registrationNumber VARCHAR(6),
    staffID INT,
    datum DATETIME,
    descriptionReport VARCHAR(512),
    FOREIGN KEY (registrationNumber) REFERENCES Fordon(registrationNumber),
    FOREIGN KEY (staffID) REFERENCES Personal(staffID)
);


CREATE TABLE control (
    controlID INT AUTO_INCREMENT PRIMARY KEY,
    registrationNumber VARCHAR(6),
    staffID INT,
    datum DATETIME,
    controlLarge BOOL,
    fuelLevel INT,
    FOREIGN KEY (registrationNumber) REFERENCES Fordon(registrationNumber),
    FOREIGN KEY (staffID) REFERENCES Personal(staffID)
);

CREATE TABLE damage (
    damageID INT AUTO_INCREMENT PRIMARY KEY,
    controlID INT,
    fixedDamage BOOL,
    repairedDate DATETIME,
    descriptionDamage VARCHAR(512),
    FOREIGN KEY (controlID) REFERENCES Kontroll(controlID)
);

CREATE TABLE station (
    stationName VARCHAR(50) PRIMARY KEY,
    streetName VARCHAR(50),
    zipCode VARCHAR(10),
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE booking_details (
    bookingDetalsID INT AUTO_INCREMENT PRIMARY KEY,
    bookingNumber INT,
    registrationNumber VARCHAR(6),
    FOREIGN KEY (bookingNumber) REFERENCES Bokning(bookingNumber),
    FOREIGN KEY (registrationNumber) REFERENCES Fordon(registrationNumber)
);

CREATE TABLE booking (
    bookingNumber INT AUTO_INCREMENT PRIMARY KEY,
    stationId INT,
    orgNumber INT,
    personalIdentificationNumber VARCHAR(255),
    offerID INT,
    startDatum DATETIME,
    endDatum DATETIME,
    commentBooking VARCHAR(512),
    driverLicenseCheck BOOL,
    cost FLOAT,
    FOREIGN KEY (stationId) REFERENCES Station(stationId),
    FOREIGN KEY (orgNumber) REFERENCES ForetagsKund(orgNumber),
    FOREIGN KEY (personalIdentificationNumber) REFERENCES PrivatKund(personalIdentificationNumber),
    FOREIGN KEY (offerID) REFERENCES Erbjudande(offerID)
);

CREATE TABLE contract (
    contractID INT AUTO_INCREMENT PRIMARY KEY,
    bookingNumber INT,
    datum DATETIME,
    orderingParty VARCHAR(100),
    FOREIGN KEY (bookingNumber) REFERENCES Bokning(bookingNumber)
);

CREATE TABLE invoice (
    invoiceNumber INT PRIMARY KEY,
    bookingNumber INT,
    price FLOAT,
    vatlueAddedTax INT,
    datum DATETIME,
    dueDate DATETIME,
    paid BOOL,
    FOREIGN KEY (bookingNumber) REFERENCES Bokning(bookingNumber)
);

CREATE TABLE business_customer (
    orgNumber INT PRIMARY KEY,
    streetName VARCHAR(50),
    zipCode VARCHAR(10),
    city VARCHAR(50),
    invoiceStreetName VARCHAR(50),
    invoiceZipCode VARCHAR(10),
    invoiceCity VARCHAR(50),
    contactPerson VARCHAR(50),
    telephoneNumber VARCHAR(25),
    email VARCHAR(50)
);

CREATE TABLE private_customer (
    personalIdentificationNumber VARCHAR(13) PRIMARY KEY,
    preName VARCHAR(50),
    surName VARCHAR(50),
    streetName VARCHAR(50),
    zipCode VARCHAR(10),
    city VARCHAR(50),
    telephone VARCHAR(25),
    email VARCHAR(50)
);

CREATE TABLE offer (
    offerID INT AUTO_INCREMENT PRIMARY KEY,
    descriptionOffer VARCHAR(256),
    startDatum DATETIME,
    endDatum DATETIME,
    freeMileage INT,
    discount INT
);
