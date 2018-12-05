SELECT c_customername,
       o_Quantity
  FROM orders,
       customer,
       region
 WHERE o_customerid = c_customerid AND 
       c_regionkey = r_regionkey AND 
       r_Zip = '94585'
 GROUP BY c_customername,
          o_Quantity;
