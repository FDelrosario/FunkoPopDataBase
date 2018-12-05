/* how many of each funko pop is going to be supplied for purchase by the compnany*/
SELECT fc_popname, fc_quantity
  FROM funkocompany
 GROUP BY fc_quantity;
