SELECT COUNT(o_customerid) 
FROM orders
WHERE (
        SELECT o_customerid
        FROM    orders
        WHERE    o_orderdate LIKE '2019-01-03'
        GROUP BY o_customerid
        ); 