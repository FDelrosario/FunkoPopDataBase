/*List the distributors who had the average amount of orders with dpci = 323012275*/

SELECT d_name
FROM distributors, 
transactions, 
orders
WHERE t_distributorid = d_distributorid AND t_orderid = o_orderid AND 
    (
    SELECT AVG(o_quantity) 
    FROM orders
    WHERE o_DPCI = 323012275
    )
GROUP BY o_dpci; 
    