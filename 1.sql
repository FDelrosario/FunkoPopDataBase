/* which customers are from the South region?*/
SELECT distinct c_customername
  FROM customer, region
 WHERE c_regionkey = r_regionkey
 and r_regionkey = 'South';
