SELECT t_orderdate,
    count(*)
FROM orders, transactions
WHERE (o_orderdate LIKE '2019-03-%' AND 
    EXISTS ( 
    SELECT count(*)
        FROM orders, transactions
        WHERE t_orderkey = o_orderkey AND 
            t_orderdate > o_orderdate 
            )
            GROUP BY t_orderdate;