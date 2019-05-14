SELECT YEAR(order_date) AS "Tellimuse aasta", ROUND(SUM(price),2) AS "Hind"
FROM TAK18_Salundi.yl21_Orders
LEFT JOIN TAK18_Salundi.yl21_Books ON TAK18_Salundi.yl21_Books.id = TAK18_Salundi.yl21_Orders.book_id
GROUP BY YEAR(order_date)
;