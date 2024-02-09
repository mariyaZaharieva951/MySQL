SELECT c.name,c.currency, COUNT(fp.passenger_id) AS booked_tickets
FROM flights f
JOIN countries c ON f.destination_country = c.id
JOIN flights_passengers fp ON c.id = fp.flight_id
GROUP BY 
    c.name
HAVING 
    booked_tickets >= 20
ORDER BY 
    booked_tickets DESC;