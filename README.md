### robert_SQL

# The analysis
### 1. movie that was released in 1999
```sql
SELECT
   mov_title AS Movie_Title,
   mov_year AS Year_of_Release
FROM movie
```

### 2. movie title and release year
```sql
SELECT
   mov_title AS Movie_Title,
   mov_year AS Year_of_Release
FROM movie
```

### 4. movie released before 1998
```sql
SELECT
  mov_title,
  mov_year
FROM movie
WHERE mov_year < 1998
```

### 5. The year 'American Beauty' was released
```sql
SELECT
   mov_title,
   mov_year
FROM movie
WHERE mov_title = 'American Beauty'
```


