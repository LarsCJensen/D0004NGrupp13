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

-- List all databases, verify green_rental exists!
SHOW DATABASES;

-- Select the Green Rental database;
USE green_rental;

-- List each table of Green Rental
DESCRIBE report;
DESCRIBE control;
DESCRIBE damage;

-- Assign staffId to variables instead of hardcoded values
SELECT staffID INTO @Sara
FROM staff
WHERE firstName = 'Sara' AND lastName = 'Eriksson';

SELECT staffID INTO @Oscar
FROM staff
WHERE firstName = 'Oscar' AND lastName = 'Nilsson';

SELECT staffID INTO @Eva
FROM staff
WHERE firstName = 'Eva' AND lastName = 'Andersson';

SELECT staffID INTO @Jonas
FROM staff
WHERE firstName = 'Jonas' AND lastName = 'Johansson';

SELECT staffID INTO @Anna
FROM staff
WHERE firstName = 'Anna' AND lastName = 'Karlsson';

SELECT staffID INTO @Andreas
FROM staff
WHERE firstName = 'Andreas' AND lastName = 'Svensson';

-- Insert report data
INSERT INTO report (registrationNumber, staffID, datum, descriptionReport)
VALUES ("AAB222", @Sara, "2024-11-21", "Stenskott");

INSERT INTO report (registrationNumber, staffID, datum, descriptionReport)
VALUES ("AKB465", @Eva, "2023-05-07", "Punktering");

INSERT INTO report (registrationNumber, staffID, datum, descriptionReport)
VALUES ("VBX479", @Anna, "2024-02-01", "Repa");

-- Insert control data
INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("CAG461", @Oscar, "2024-03-01", false, 50);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("AKB465", @Jonas, "2024-06-01", false, 100);

INSERT INTO control (registrationNumber, staffID, controlDate, controlLarge, fuelLevel)
VALUES ("SDL176", @Andreas, "2024-09-01", true, 75);

-- Assign controlID to variables instead of hardcoded values
SELECT controlID INTO @CAG461Ctrl
FROM control
WHERE registrationNumber = 'CAG461';

SELECT controlID INTO @AKB465Ctrl
FROM control
WHERE registrationNumber = 'AKB465';

SELECT controlID INTO @SDL176Ctrl
FROM control
WHERE registrationNumber = 'SDL176';

-- Insert damage data
INSERT INTO damage (controlID, fixedDamage, repairedDate, descriptionDamage)
VALUES (@CAG461Ctrl, true, "2024-03-15", "Byte vindrutetorkare");

INSERT INTO damage (controlID, fixedDamage, repairedDate, descriptionDamage)
VALUES (@AKB465Ctrl, true, "2024-06-15", "Kantstött fälg");

INSERT INTO damage (controlID, fixedDamage, descriptionDamage)
VALUES (@SDL176Ctrl, false, "Byte kamrem");















