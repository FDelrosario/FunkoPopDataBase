/*which customer ordered the most amount of each funko pop, in ABC (pop) order */
SELECT DISTINCT c_customername,
                max(o_quantity),
                o_DPCI,
                 fp_popname
  FROM customer,
       orders,
       funkopop
 WHERE c_customerid = o_customerid AND 
       fp_dpci = o_dpci
 GROUP BY o_DPCI
 order by fp_popname