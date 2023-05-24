CREATE TABLE new_user(
cust_id SERIAL PRIMARY KEY,
phone_number INTEGER NOT NULL,
cust_email VARCHAR(70) NOT NULL UNIQUE
);

CREATE TABLE movies(
movies_id SERIAL PRIMARY KEY,
movies_name VARCHAR(100)NOT NULL,
movies_duration INTEGER,
movies_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

DROP TABLE movie;
DROP TABLE movies;

CREATE TABLE full_movie(
fullmovie_id SERIAL PRIMARY KEY,
movie_name VARCHAR (100) NOT NULL,
movie_duration INTEGER NOT NULL,
movie_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE buy_ticket(
ticket_number SERIAL PRIMARY KEY,
seat_row INTEGER NOT NULL,
seat_number INTEGER NOT NULL,
price INTEGER NOT NULL
)

CREATE TABLE theater(
location_id SERIAL PRIMARY KEY,
address VARCHAR(100) NOT NULL
)

CREATE TABLE showtime(
showtime_id SERIAL PRIMARY KEY
)

ALTER TABLE showtime
ADD FOREIGN KEY (cust_id) REFERENCES new_user(cust_id);

