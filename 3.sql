/* how many orders are not in the winter of 2018/2019 (pretend spring starts in march) */
SELECT count( * ) 
  FROM orders
 WHERE o_orderdate NOT LIKE '2019-01-%' AND 
       o_orderdate NOT LIKE '2019-02-%' AND 
       o_orderdate NOT LIKE '2018-12-%';