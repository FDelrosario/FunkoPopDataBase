/* return the customer information of those from the midwest*/
select * 
from customer
where c_regionkey IN ('Mid West')