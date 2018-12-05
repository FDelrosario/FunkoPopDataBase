/* how many orders will have been supplied by Shumi Nation before March of 2019*/
SELECT count(d_name) 
  FROM distributors,
       transactions
 WHERE t_orderdate < '2019-%-03' AND 
       t_distributorid = d_distributorid AND 
       d_name = 'Shumi Nation';
