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
DESCRIBE agreement;
DESCRIBE offer;

-- Assign bookingNumber to variables instead of hardcoded values
SELECT bookingNumber INTO @RökepipanBooking
FROM booking
WHERE orgNumber = @Rökepipan
AND startDatum = "2024-04-10"
AND endDatum = "2024-04-12";

SELECT bookingNumber INTO @TeknikHjälpBooking
FROM booking
WHERE orgNumber = @TeknikHjälp
AND startDatum = "2023-11-14"
AND endDatum = "2024-11-21";

SELECT bookingNumber INTO @ByggMästarnaBooking
FROM booking
WHERE orgNumber = @ByggMästarna
AND startDatum = "2023-05-01"
AND endDatum = "2023-05-07";

-- Insert agreement data
INSERT INTO agreement (bookingNumber, datum, orderingParty)
VALUES (@RökepipanBooking, "2024-04-10", "@TODO");

INSERT INTO agreement (bookingNumber, datum, orderingParty)
VALUES (@TeknikHjälpBooking, "2023-11-14", "@TODO");

INSERT INTO agreement (bookingNumber, datum, orderingParty)
VALUES (@ByggMästarnaBooking, "2023-05-01", "@TODO");

-- Insert offer data
INSERT INTO offer (descriptionOffer, startDatum, endDatum, freeMileage, discount)
VALUES ("Weekendresa", "2023-07-29", "2023-07-30", 50, 199);

INSERT INTO offer (descriptionOffer, startDatum, endDatum, freeMileage, discount)
VALUES ("Familjeresa", "2024-04-01", "2024-04-07", 100, 399);

