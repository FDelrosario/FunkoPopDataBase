/*Present the number of Blank panther glow variants in stock*/
SELECT fp_Stock
FROM funkopop
WHERE fp_Popname = 'Black Panther' AND fp_variants = 'Glow'
