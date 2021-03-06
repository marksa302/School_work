SELECT title, COUNT(book_id) AS Tellimuste_arv
FROM TAK18_Salundi.yl21_Orders
LEFT JOIN TAK18_Salundi.yl21_Books ON TAK18_Salundi.yl21_Books.id=TAK18_Salundi.yl21_Orders.book_id
WHERE YEAR(order_date)=2017
GROUP BY title
ORDER BY Tellimuste_arv DESC
LIMIT 10;