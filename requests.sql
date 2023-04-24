USE RZHD_DB

SELECT * FROM Trains

SELECT * FROM Tickets

SELECT CityName FROM Stations

SELECT TrainType,TrainNumber FROM Trains

SELECT * FROM Tickets WHERE TicketType = 'Стандарт плюс'

SELECT TrainName,TrainNumber FROM Trains WHERE TrainName = 'Сапсан'

SELECT MAX(Price) AS MaxPrice FROM Tickets

SELECT AVG(Price) AS AvgPrice FROM Tickets

SELECT MIN(Price) AS MinPrice FROM Tickets

SELECT TicketType, COUNT(TicketType) AS TicketTypeCount From Tickets GROUP BY TicketType

SELECT * FROM Trains JOIN TrainSchedule ON Trains.TrainId = TrainSchedule.ScheduleId

SELECT * FROM Tickets LEFT JOIN TrainSchedule ON Tickets.TicketId = TrainSchedule.ScheduleId

SELECT * FROM Stations WHERE StationName = 'Ленинградский вокзал'

SELECT ArrivalPointId, COUNT(ArrivalPointId) AS ArrivalCount FROM Tickets WHERE ArrivalPointId = 7 GROUP BY ArrivalPointId

SELECT * FROM TrainSchedule WHERE TrainId= 1

SELECT * FROM Tickets ORDER BY Price DESC

SELECT * FROM Trains WHERE TrainName = 'Ласточка Премиум' ORDER BY TrainName DESC

SELECT * FROM Trains WHERE Wagons >5 ORDER BY Wagons DESC

SELECT * FROM Trains WHERE Periodicity = 'Ежедневно' 

DELETE TABLE Tickets

DROP RZHD_DB