### robert_SQL

# The analysis
### 1. movie title and release year
```sql
SELECT
   mov_title AS Movie_Title,
   mov_year AS Year_of_Release
FROM movie
```

### 2. movie released before 1998
```sql
SELECT
  mov_title,
  mov_year
FROM movie
WHERE mov_year < 1998
```

### 3. The year 'American Beauty' was released
```sql
SELECT
   mov_title,
   mov_year
FROM movie
WHERE mov_title = 'American Beauty'
```

### 4. Movie That Was Released in 1999
```sql
SELECT
   mov_title,
   mov_year
FROM movie
WHERE mov_year = 1999
```

### 5. Actors Who Played a Role in the Movie 'Annie Hall'
```sql
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
```

### 6. The Director of A Film That Cast a Role In 'Eyes Wide Shut'
```sql
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


