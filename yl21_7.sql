SELECT username, ROUND(SUM(price), 2) AS Kulutatud_summa
FROM TAK18_Salundi.yl21_Orders
LEFT JOIN TAK18_Salundi.yl21_Books ON TAK18_Salundi.yl21_Books.id=TAK18_Salundi.yl21_Orders.book_id
LEFT JOIN TAK18_Salundi.yl21_Clients ON TAK18_Salundi.yl21_Clients.id=TAK18_Salundi.yl21_Orders.client_id
WHERE YEAR(order_date)=2017
GROUP BY username
ORDER BY SUM(price) ASC;