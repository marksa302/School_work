select count(*)
from TAK18_Salundi.yl21_Orders
group by year(order_date)
;