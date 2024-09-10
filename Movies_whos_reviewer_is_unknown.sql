SELECT
   mov_title
FROM movie
WHERE mov_id IN (
    SELECT mov_id
    FROM rating
    WHERE rev_id IN(
        SELECT rev_id
        FROM rating
        WHERE rev_id IN(
            SELECT rev_id
            FROM reviewer
            WHERE rev_name = NULL
        )
    )
)


