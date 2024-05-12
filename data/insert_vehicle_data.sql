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
DESCRIBE vehicle;
DESCRIBE vehicle_category;

-- Insert vehicle_category data
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

-- Assign variables to be used instead of hardcoded values
SELECT vehicleCategoryId INTO @CatId_Stadsbil
FROM vehicle_category
WHERE name = 'Stadsbil';

SELECT vehicleCategoryId INTO @CatId_Liten
FROM vehicle_category
WHERE name = 'Liten';

SELECT vehicleCategoryId INTO @CatId_Mellan
FROM vehicle_category
WHERE name = 'Mellan';

SELECT vehicleCategoryId INTO @CatId_Kombi
FROM vehicle_category
WHERE name = 'Kombi';

SELECT vehicleCategoryId INTO @CatId_Minibuss
FROM vehicle_category
WHERE name = 'Minibuss';

SELECT vehicleCategoryId INTO @CatId_Transportbil
FROM vehicle_category
WHERE name = 'Transportbil';

-- Insert vehicle data for Uppsala station
INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("ABC123", @CatId_Stadsbil, "Uppsala station", "Smart EQ ForTwo");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AAC223", @CatId_Liten, "Uppsala station", "Ford Puma 1.0T");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AAB222", @CatId_Mellan, "Uppsala station", "Tesla Model S");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AAD123", @CatId_Mellan, "Uppsala station", "Volvo XC40");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("ADA321", @CatId_Mellan, "Uppsala station", "Volvo EX30");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("LLD914", @CatId_Kombi, "Uppsala station", "Volvo XC60");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("KBA321", @CatId_Kombi, "Uppsala station", "MG MG5 EV");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CAG461", @CatId_Minibuss, "Uppsala station", "Mercedes B200");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CWV737", @CatId_Transportbil, "Uppsala station", "WV California");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("SMM346", @CatId_Transportbil, "Uppsala station", "Mercedes Vito");

-- Insert vehicle data for Lund Station
INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CBA321",  @CatId_Stadsbil, "Lund station", "Mini Cooper");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("EDF774",  @CatId_Stadsbil, "Lund station", "Fiat 500");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("FED575", @CatId_Mellan, "Lund station", "Tesla Model S");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("KLT369", @CatId_Kombi, "Lund station", "Tesla Model X");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("AKB465", @CatId_Kombi, "Lund station", "MG MG5 EV");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("WVC331", @CatId_Transportbil, "Lund station", "WV California");

-- Insert vehicle data for Linköping Station Toyota iQ
INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("KLM963", @CatId_Stadsbil, "Linköping Station", "Kia Picanto");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("LKT752", @CatId_Stadsbil, "Linköping Station", "Toyota iQ");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("CTS213", @CatId_Liten, "Linköping Station", "Citroën C1");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("RTP317", @CatId_Liten, "Linköping Station", "Citroën 2CV");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("VBX479", @CatId_Kombi, "Linköping Station", "Tesla Model X");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("LMD994", @CatId_Kombi, "Linköping Station", "Volvo XC60");

INSERT INTO vehicle (registrationNumber, vehicleCategoryId, stationName, model)
VALUES ("SDL176", @CatId_Transportbil, "Linköping Station", "Mercedes Vito");