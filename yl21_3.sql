select *
from TAK18_Salundi.yl21_Books
where release_date < 1970
and type = 'used'
and price < 20
;