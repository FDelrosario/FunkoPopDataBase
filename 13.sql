/*what is the number of orders with the minimum quantity of pops*/
SELECT count(o_quantity) 
  FROM orders
 WHERE o_quantity = (
                        SELECT min(o_quantity) 
                          FROM orders
                    );
