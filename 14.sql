/*How many transactions were completed by Big Bad Toy Store*/
SELECT count(t_Orderid) 
  FROM transactions,
       distributors
 WHERE t_distributorid = d_distributorid AND 
       d_name = 'Big Bad Toy Store';
