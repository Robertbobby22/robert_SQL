SELECT
   mov_title,
   mov_year,
   mov_rel_country
FROM movie
WHERE mov_rel_country NOT IN ('UK')


