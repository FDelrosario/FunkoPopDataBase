/*how many different "Neil Sorianos" are there?*/
select count(c_customerid)
from customer
where c_customername = 'Neil Soriano'