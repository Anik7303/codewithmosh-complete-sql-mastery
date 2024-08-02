USE sql_store;

SELECT * FROM customers WHERE points > 1000 AND points < 3000;

SELECT * FROM customers WHERE points BETWEEN 1000 AND 3000;