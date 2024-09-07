CREATE TABLE actor(
    act_id INT PRIMARY KEY,
    act_fname TEXT,
    act_lname TEXT,
    act_gender TEXT
);
CREATE TABLE genres(
    gen_id INT PRIMARY KEY,
    gen_title TEXT
);
CREATE TABLE director(
    dir_id INT PRIMARY KEY,
    dir_fname TEXT,
    dir_lname TEXT
);
CREATE TABLE movie(
    mov_id INT PRIMARY KEY,
    mov_title TEXT,
    mov_year DATE,
    mov_time INT,
    mov_lang TEXT,
    mov_dt_rel DATE,
    mov_rel_country TEXT
);
CREATE TABLE movie_genres(
    mov_id INT,
    gen_id INT,
    FOREIGN KEY(gen_id) REFERENCES genres(gen_id),
    FOREIGN KEY(mov_id) REFERENCES movie(mov_id)
);
CREATE TABLE movie_direction(
    dir_id INT,
    mov_id INT,
    FOREIGN KEY(dir_id) REFERENCES director(dir_id),
    FOREIGN KEY(mov_id) REFERENCES movie(mov_id)
);
CREATE TABLE reviewer(
    rev_id INT PRIMARY KEY,
    rev_name TEXT
);
CREATE TABLE rating(
    mov_id INT,
    rev_id INT,
    rev_stars INT,
    num_o_ratings INT,
    FOREIGN KEY(mov_id) REFERENCES movie(mov_id),
    FOREIGN KEY(rev_id) REFERENCES reviewer(rev_id)
);
CREATE TABLE movie_cast(
    act_id INT,
    mov_id INT,
    role TEXT,
    FOREIGN KEY(act_id) REFERENCES actor(act_id),
    FOREIGN KEY(mov_id) REFERENCES movie(mov_id)
)
