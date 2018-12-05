/* show which customer(s) have ordered more than the average amount per order, along with
what they ordered and how many*/
SELECT DISTINCT c_customername,
                o_quantity,
                fp_popname
  FROM customer,
       orders,
       funkopop
 WHERE c_customerid = o_customerid AND 
       o_dpci = fp_dpci AND 
       o_quantity > (
                        SELECT avg(o_quantity) 
                          FROM orders
                    )
 GROUP BY o_quantity;
