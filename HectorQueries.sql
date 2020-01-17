#Pregunta 1
#SELECT COUNT(*) AS total FROM flights;

#Pregunta 2
#SELECT Origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides
#FROM flights
#GROUP BY Origin;

#Pregunta 3
#SELECT Origin, colYear, colMonth, FORMAT(ArrDelay,4) AS prom_arribades
#FROM flights
#ORDER BY Origin, colYear, colMonth ASC;	

#Pregunta 4
#SELECT airports.city, colYear, colMonth, AVG(ArrDelay) AS prom_arribades
#FROM flights
#JOIN usairlineflights.airports
#ON flights.Origin = airports.iata
#GROUP BY colMonth, colYear
#ORDER BY airports.city, colYear, colMonth ASC;

#Pregunta 5 
#OK
#SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) AS total_cancelled
#FROM flights
#WHERE Cancelled <> 0
#GROUP BY UniqueCarrier, colYear, colMonth
#ORDER BY SUM(Cancelled) DESC;

#Pregunta 6
#SELECT Tailnum, SUM(Distance)
#FROM flights
#WHERE Tailnum != ''
#GROUP BY Tailnum
#ORDER BY SUM(Distance) DESC LIMIT 10;

#Pregunta 7
SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay
FROM flights
#WHERE ArrDelay > 10
GROUP BY UniqueCarrier
ORDER BY AVG(ArrDelay) DESC;