SELECT country, city 
FROM country
INNER JOIN city
ON country.country_id = city.country_id;

SELECT payment.payment_id, customer.first_name, customer.last_name 
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id ;

SELECT first_name, last_name, rental_id
FROM customer
INNER JOIN rental
ON rental.customer_id = customer.customer_id;

