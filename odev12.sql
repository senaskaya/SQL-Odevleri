SELECT COUNT(*) FROM film
WHERE length >
(
SELECT AVG(length) FROM film
);

SELECT COUNT(*) FROM film
WHERE rental_rate = 
(
SELECT MAX(rental_rate) FROM film
);

SELECT * FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);


SELECT first_name, last_name, COUNT(payment_id) AS alisveris_sayisi 
FROM payment
LEFT JOIN customer
ON payment.customer_id = customer.customer_id
GROUP BY first_name, last_name
ORDER BY alisveris_sayisi;
