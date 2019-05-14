SELECT COUNT(book_id) AS "Tellimuste arv", ROUND(SUM(price), 2) AS "Summa"
FROM TAK18_Salundi.yl21_Orders
LEFT JOIN TAK18_Salundi.yl21_Books
ON TAK18_Salundi.yl21_Books.id=TAK18_Salundi.yl21_Orders.book_id
WHERE YEAR(order_date)=2017
ORDER BY order_date ASC;