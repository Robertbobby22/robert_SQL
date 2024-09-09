SELECT
   act_fname AS First_Name,
   act_lname AS Last_Name
FROM actor
WHERE act_id IN (
    SELECT act_id
    FROM movie_cast
    WHERE mov_id IN (
        SELECT mov_id
        FROM movie
        WHERE mov_title = 'Annie Hall'
    )
)

