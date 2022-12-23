--select count(*) from film
--where length > (

--select avg(length) from film 

--) ;

--film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

--select count(*) from film
--where rental_rate = (

--select max(rental_rate) from film
--) ;

--film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.

--select * from film
--where rental_rate = any
--(
	--SELECT MIN(rental_rate) FROM film
--)
--and replacement_cost = any
--(
	--SELECT MIN(replacement_cost) FROM film
--);


--payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.


SELECT customer.first_name, customer.last_name FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id
WHERE payment.amount =
(
    SELECT MAX(amount) FROM payment
);