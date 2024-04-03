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