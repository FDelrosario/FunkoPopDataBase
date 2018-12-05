/*order information of order in Feb and March*/
SELECT *
  FROM orders
 WHERE o_orderdate BETWEEN '2019-02-%' AND '2019-03-%'