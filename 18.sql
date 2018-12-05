SELECT r_state,
       COUNT(*) 
  FROM orders,
       customer,
       region,
       distributors
 WHERE o_customerid = c_customerid AND 
       c_Regionkey = r_Regionkey AND 
       r_Regionkey = d_RegionKey AND 
       d_name = 'Toy Tokyo'
 GROUP BY c_customerid;
