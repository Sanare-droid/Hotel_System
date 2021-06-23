CREATE DATABASE Hotel_System;
CREATE TABLE Hotels (
Hotel_Number int(100),
Hotel_Name text (255),
City varchar(255)
);

CREATE TABLE Rooms (
Room_Number int(100),
Room_Name varchar(255),
Price int (100),
TV bool
);

CREATE TABLE Reservation (
Reservation_Id int(100),
Room_reserved varchar(255),
Guest int (100),
Date_In date, 
Days int (100)
);

INSERT INTO Hotels(Hotel_number, Hotel_name, City)
VALUES ('1', 'Kempinski', 'Nairobi');

INSERT INTO Hotels(Hotel_number, Hotel_name, City)
VALUES ('2', 'Sarova', 'Nairobi');

INSERT INTO Hotels(Hotel_number, Hotel_name, City)
VALUES ('3', 'Diani', 'Mombasa');

INSERT INTO Hotels(Hotel_number, Hotel_name, City)
VALUES ('4', 'Hilton', 'Nairobi');

INSERT INTO Hotels(Hotel_number, Hotel_name, City)
VALUES ('5', 'Lokichar', 'Lodwa');

INSERT INTO Hotels(Hotel_number, Hotel_name, City)
VALUES ('6', 'Kahawa', 'Nakuru');
INSERT INTO Hotels(Hotel_number, Hotel_name, City)
VALUES ('7', 'Msafiri', 'Kwale');
INSERT INTO Hotels(Hotel_number, Hotel_name, City)
VALUES ('8', 'Kaloleni', 'Mombasa');

SELECT *FROM Rooms;

SELECT *FROM Hotels;

SELECT *FROM Reservation;

INSERT INTO Rooms(Room_number, Room_name, Price, TV)
VALUES ('1', 'Simba', '1450', true);
INSERT INTO Rooms(Room_number, Room_name, Price, TV)
VALUES ('2', 'Chui', '1000', False);
INSERT INTO Rooms(Room_number, Room_name, Price, TV)
VALUES ('3', 'Nyati', '100',TRUE);
INSERT INTO Rooms(Room_number, Room_name, Price, TV)
VALUES ('4', 'Panda', '900', TRUE);
INSERT INTO Rooms(Room_number, Room_name, Price, TV)
VALUES ('5', 'Fisi', '1400' ,False);
INSERT INTO Rooms(Room_number, Room_name, Price, TV)
VALUES ('6', 'Swara', '1340' ,TRUE);
INSERT INTO Rooms(Room_number, Room_name, Price, TV)
VALUES ('7', 'Punda', '100' ,False);
INSERT INTO Rooms(Room_number, Room_name, Price, TV)
VALUES ('8', 'Sungura', '100', TRUE);

SELECT * FROM Rooms;

SELECT *FROM Rooms
WHERE Price=100;

SELECT *FROM Hotels
WHERE City= 'Nairobi';
SELECT *FROM Rooms
WHERE TV= FALSE;

INSERT INTO Reservation(Reservation_Id, Room_reserved, Guest, Date_In, Days)
VALUES ('100', 'Nyati', '8', '01-01-2021','3');
INSERT INTO Reservation(Reservation_Id, Room_reserved, Guest, Date_In, Days)
VALUES ('140', 'Sungura', '2', '02-01-2021','1');
INSERT INTO Reservation(Reservation_Id, Room_reserved, Guest, Date_In, Days)
VALUES ('140', 'Simba', '7','05-01-2021','10');
INSERT INTO Reservation(Reservation_Id, Room_reserved, Guest, Date_In, Days)
VALUES ('190', 'Panda', '20','2020-07-01','3');

SELECT *FROM Reservation;

SELECT MIN(Price) AS SmallestPrice
FROM Rooms;

SELECT MAX(Price) AS MostExpensive
FROM Rooms;

SELECT COUNT(Room_Number)
FROM Rooms;

SELECT AVG(Guest)
FROM Reservation;

SELECT Rooms.Room_Number, Reservations.Reservation_Id, Hotels.Hotel_Name
FROM Hotel_management
INNER JOIN Rooms ON Rooms.Room_Number=Reservations.Reservation_Id;