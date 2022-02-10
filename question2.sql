SELECT MONTHNAME(payment_date) AS month
	payment_id,payment_date, 
	TOP(5)PERCENT amount,
	SUM(amount) OVER(PARTITION BY MONTHNAME(date)) AS month_sum
FROM Payments
WHERE YEAR(date) = 2021
ORDER BY payment_date, amount DESC;