/*what is the funko pop with the most amount of sales */
select DISTINCT(fp_popname),(fp_variants) 
FROM funkopop, orders, transactions
WHERE  o_orderid = t_orderid AND (  
    SELECT MAX(o_quantity)
    FROM orders
    );
    