/*how many varients are of the 'Chase', 'Common', and 'Glow' type?*/
SELECT 
        SUM(CASE WHEN fp_variants = 'Chase' THEN 1 ELSE 0 END) as rare,
        sum(Case when fp_variants = 'Common' then 1 else 0 end) as common,
        sum(Case when fp_variants = 'Glow' then 1 else 0 end) as veryRare
  FROM funkopop

