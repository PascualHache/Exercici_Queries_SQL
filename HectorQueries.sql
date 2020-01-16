#Pregunta 1
#SELECT COUNT(*) FROM flights;

#Pregunta 2
#SELECT Origin, AVG(ArrDelay), AVG(DepDelay)
#FROM flights
#GROUP BY Origin;

#Pregunta 3
#SELECT Origin, colYear, colMonth, ArrDelay
#FROM flights
#ORDER BY Origin, colYear, colMonth ASC;	

#Pregunta 4
#SELECT airports.city, colYear, colMonth, ArrDelay
#FROM flights
#LEFT JOIN usairlineflights.airports
#ON flights.Origin = airports.iata
#ORDER BY airports.city, colYear, colMonth ASC;

#Pregunta 5
SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled)
FROM flights
GROUP BY UniqueCarrier
ORDER BY Cancelled DESC;

#Pregunta 6

#Pregunta 7