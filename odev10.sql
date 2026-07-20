SELECT city, country 
FROM country
LEFT JOIN city
ON country.country_id = city.country_id ;

SELECT first_name, last_name, payment_id 
FROM customer
RIGHT JOIN payment
ON customer.customer_id = payment.customer_id;

SELECT first_name, last_name, rental_id
FROM customer
FULL JOIN rental
ON rental.customer_id = customer.customer_id;