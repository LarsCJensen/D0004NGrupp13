SELECT * FROM station;

INSERT INTO station (stationName, streetName, zipCode, city, country)
VALUES ("TestStation", "Test Street", "123 12", "Test City", "Test Country");

INSERT INTO station (stationName, streetName)
VALUES("TestStation2", "Test Street2");

INSERT INTO station
VALUES ("TestStation 3", "Test Street ", "321 21", "Test City 3", "Test Country 3");

INSERT INTO station (stationName, streetName)
VALUES("TestStationÖ", "Test StreetÖ");