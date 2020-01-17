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

#Pregunta 5 TO DO
#SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled)
#FROM flights
#GROUP BY UniqueCarrier
#ORDER BY Cancelled DESC;

#Pregunta 6
#SELECT Tailnum, Distance
#FROM flights
#ORDER BY Distance DESC LIMIT 10;

# En el ejemplo, no aparece ningun Tailnum vacio, si se quiere una query donde 
#se devuelvan los 10 aviones con Tailnum sería este:
#SELECT Tailnum, Distance
#FROM flights
#WHERE Tailnum != ''
#ORDER BY Distance DESC LIMIT 10;


#Pregunta 7
#SELECT UniqueCarrier, AVG(ArrDelay)
#FROM flights
#WHERE ArrDelay > 10
#GROUP BY UniqueCarrier
#ORDER BY AVG(ArrDelay) DESC;
