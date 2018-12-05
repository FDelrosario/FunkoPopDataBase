/*what is the name of the Distributor that supplies to (city) Astro World?*/
SELECT DISTINCT d_name
  FROM distributors,
       customer,
       orders,
       transactions,
       region
 WHERE c_city = 'Astro World' AND 
       c_customerid = o_customerid AND 
       o_orderid = t_orderid AND 
       t_distributorid = d_distributorid AND 
       r_regionkey = d_regionkey AND 
       c_regionkey = r_regionkey;
