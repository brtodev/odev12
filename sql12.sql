# film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

select count(*) from film
where length > (select avg(length) from film);

# film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

select count(*) from film
where rental_rate > (select max(rental_rate) from film);

# film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.

select rental_rate, replacement_cost from film
where rental_rate = (select MIN(rental_rate) from film) and replacement_cost = (select min(replacement_cost) from film)
order by film_id asc;

# payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

select * from payment
join customer on payment.customer_id = customer.customer_id
where amount = (select max(amount) from payment)
order by customer_id asc;
