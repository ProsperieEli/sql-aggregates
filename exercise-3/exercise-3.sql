-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT country,
AVG(payment.amount)
FROM country
LEFT JOIN city
ON city.country_id = country.country_id
LEFT JOIN address
ON address.city_id = city.city_id
INNER JOIN customer
ON 
customer.address_id = address.address_id
INNER JOIN payment
ON
customer.customer_id = payment.customer_id
GROUP BY country
ORDER BY avg desc
LIMIT 10;
