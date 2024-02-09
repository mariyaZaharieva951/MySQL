SELECT property_id,agent_id,price,offer_datetime
FROM property_offers
WHERE year(offer_datetime) = '2021'
ORDER BY price ASC
LIMIT 10;