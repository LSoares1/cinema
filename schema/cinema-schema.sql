DROP DATABASE IF EXISTS cinema;
CREATE DATABASE cinema;
USE cinema;

CREATE TABLE films (
    film_id INT AUTO_INCREMENT,
    film VARCHAR(150) NOT NULL,
    genre VARCHAR(150) NOT NULL,
    runtime TIME NOT NULL,
    screen_number SMALLINT NOT NULL,
    PRIMARY KEY (film_id)
);

CREATE TABLE snacks (
    snack_id INT AUTO_INCREMENT,
    food VARCHAR(75) NOT NULL,
    food_price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (snack_id)
);

CREATE TABLE drinks (
    drink_id INT AUTO_INCREMENT,
    drink VARCHAR(75) NOT NULL,
    drink_price DECIMAL(10,2) NOT NULL,
    drink_size VARCHAR(15) NOT NULL,
    PRIMARY KEY (drink_id)
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT,
    fk_film_id INT NOT NULL,
    fk_snack_id INT NOT NULL,
    fk_drink_id INT NOT NULL,
    seat_number SMALLINT NOT NULL,
    ticket_price DECIMAL(10,2) NOT NULL,
    row_num CHAR(1) NOT NULL,
    PRIMARY KEY (order_id),
    FOREIGN KEY (fk_film_id) REFERENCES films(film_id),
    FOREIGN KEY (fk_snack_id) REFERENCES snacks(snack_id),
    FOREIGN KEY (fk_drink_id) REFERENCES drinks(drink_id)
);