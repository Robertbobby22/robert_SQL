SELECT
   dir_fname,
   dir_lname
FROM director
WHERE dir_id IN(
    SELECT dir_id
    FROM movie_direction
    WHERE mov_id IN(
        SELECT mov_id
        FROM movie
        WHERE mov_title = 'Eyes Wide Shut'
    )
)


