/*
This is the file that holds create table statements for my CS 5200 database application project.
*/

CREATE DATABASE IF NOT EXISTS team_sabrina;
USE team_sabrina;

CREATE TABLE album (
album_id INT AUTO_INCREMENT PRIMARY KEY,
album_name VARCHAR(64) NOT NULL, 
release_date DATE NOT NULL
);

CREATE TABLE tour (
tour_name VARCHAR(64) PRIMARY KEY,
start_date DATE NOT NULL, 
end_date DATE, 
tour_status ENUM('Upcoming','Ongoing', 'Ended') NOT NULL
);

CREATE TABLE song (
song_id INT AUTO_INCREMENT PRIMARY KEY,
song_name VARCHAR(64) NOT NULL,  
album_id INT NOT NULL,
tour_name VARCHAR(64),
order_played INT NOT NULL, 
FOREIGN KEY (album_id) REFERENCES album(album_id) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (tour_name) REFERENCES tour(tour_name) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE location (
location_id INT AUTO_INCREMENT PRIMARY KEY,
city VARCHAR(64) NOT NULL,
state_region VARCHAR(64),
country VARCHAR(64) NOT NULL,
UNIQUE(city, state_region, country)
);

CREATE TABLE venue (
location_id INT,
venue_name VARCHAR(64) NOT NULL, 
capacity INT NOT NULL, 
PRIMARY KEY(location_id, venue_name),
FOREIGN KEY (location_id) REFERENCES location(location_id) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE sabrina_show (
tour_name VARCHAR(64), 
show_id INT,
venue_name VARCHAR(64) NOT NULL,
location_id INT NOT NULL,
scheduled_date DATE NOT NULL, 
show_status ENUM('Upcoming', 'Cancelled', 'Completed') NOT NULL,
PRIMARY KEY (tour_name, show_id), 
FOREIGN KEY (tour_name) REFERENCES tour(tour_name) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (location_id, venue_name) REFERENCES venue(location_id, venue_name) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE opening_act (
act_id INT AUTO_INCREMENT PRIMARY KEY,
act_name VARCHAR(64) NOT NULL UNIQUE
);

CREATE TABLE opening_to_show (
tour_name VARCHAR(64),
show_id INT,
act_id INT,
performance_order INT,
PRIMARY KEY (tour_name, show_id, act_id),
FOREIGN KEY (tour_name, show_id) REFERENCES sabrina_show(tour_name, show_id) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (act_id) REFERENCES opening_act(act_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE customer (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(256) NOT NULL, 
last_name VARCHAR(256) NOT NULL, 
phone VARCHAR(15) NOT NULL,
email VARCHAR(256) NOT NULL UNIQUE
);

CREATE TABLE ticket_sales (
transaction_id INT AUTO_INCREMENT PRIMARY KEY, 
purchase_date DATE NOT NULL, 
total_cost DECIMAL(10,2) NOT NULL, 
ticket_quantity INT NOT NULL,
customer_id INT,
tour_name VARCHAR(64), 
show_id INT,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE ON UPDATE CASCADE, 
FOREIGN KEY (tour_name, show_id) REFERENCES sabrina_show(tour_name, show_id) ON DELETE CASCADE ON UPDATE CASCADE
);


-- functions, procedures, events, triggers, and such 

/*
Procedure to get future shows
*/
DROP PROCEDURE IF EXISTS get_future_show;
DELIMITER //
CREATE PROCEDURE get_future_show()
BEGIN
	SELECT *
	FROM sabrina_show
    WHERE scheduled_date > NOW()
    ORDER BY scheduled_date
    ;
END //
DELIMITER ;

CALL get_future_show();

/*
Procedure to get furture shows with available seats
*/
DROP PROCEDURE IF EXISTS get_future_show_with_available_seats;
DELIMITER //
CREATE PROCEDURE get_future_show_with_available_seats()
BEGIN 
SELECT ss.tour_name,ss.show_id,ss.venue_name,city, country,scheduled_date, IFNULL(SUM(ticket_quantity),0) AS sold, v.capacity, (capacity - IFNULL(SUM(ticket_quantity), 0)) AS available 
FROM sabrina_show AS ss LEFT JOIN ticket_sales AS ts ON ss.show_id = ts.show_id AND ss.tour_name = ts.tour_name
	JOIN venue AS v ON ss.venue_name = v.venue_name AND ss.location_id = v.location_id
    JOIN location AS l ON v.location_id = l.location_id
WHERE scheduled_date > NOW()
GROUP BY ss.show_id, v.capacity,ss.venue_name,ss.tour_name
;
END //
DELIMITER ;

CALL get_future_show_with_available_seats();

/*
Procedure to add tuple to album table
*/
DROP PROCEDURE IF EXISTS addAblumTuple;
DELIMITER //
CREATE PROCEDURE addAlbumTuple(
	album_name VARCHAR(64),
    release_date DATE
)
BEGIN 
	INSERT INTO album (album_name, release_date) VALUES (album_name, release_date);
END //
DELIMITER ;

/*
procedure to add tuple to customer
*/
DROP PROCEDURE IF EXISTS addCustomerTuple;
DELIMITER // 
CREATE PROCEDURE addCustomerTuple(
	first_name VARCHAR(256), 
	last_name VARCHAR(256), 
	phone VARCHAR(15),
	email VARCHAR(256)
)
BEGIN
	INSERT INTO customer (first_name, last_name, phone, email) VALUES (first_name, last_name, phone, email);
END //
DELIMITER ;

/*
procedure to add tuple to location
*/
DROP PROCEDURE IF EXISTS addLocationTuple;
DELIMITER // 
CREATE PROCEDURE addLocationTuple(
	city VARCHAR(64),
	state_region VARCHAR(64),
	country VARCHAR(64)
)
BEGIN 
	INSERT INTO location (city, state_region, country) VALUES (city, state_region, country);
END //
DELIMITER ;

/*
procedure to add tuple to opening_act
*/
DROP PROCEDURE IF EXISTS addOpeningActTuple;
DELIMITER //
CREATE PROCEDURE addOpeningActTuple (
	act_name VARCHAR(64)
)
BEGIN 
	INSERT INTO opening_act (act_name) VALUES (act_name);
END //
DELIMITER ;

/*
procedure to add tuple to opening_to_show
*/
DROP PROCEDURE IF EXISTS addOpenToShowTuple;
DELIMITER //
CREATE PROCEDURE addOpenToShowTuple(
	tour_name VARCHAR(64),
	show_id INT,
	act_id INT,
	performance_order INT
)
BEGIN 
	INSERT INTO opening_to_show VALUES (tour_name, show_id, act_id, performance_order);
END //
DELIMITER ;

/*
procedure to add tuple to sabrina_show
*/
DROP PROCEDURE IF EXISTS addShowTuple;
DELIMITER //
CREATE PROCEDURE addShowTuple(
	tour_name VARCHAR(64), 
	show_id INT,
	venue_name VARCHAR(64),
	location_id INT,
	scheduled_date DATE, 
	show_status ENUM('Upcoming', 'Cancelled', 'Completed')
)
BEGIN 
	INSERT INTO sabrina_show VALUES(tour_name, show_id, venue_name, location_id, scheduled_date, show_status);
END//
DELIMITER ;

/*
procedure to add tuple to song
*/
DROP PROCEDURE IF EXISTS addSongTuple;
DELIMITER //
CREATE PROCEDURE addSongTuple(
	song_name VARCHAR(64),  
	album_id INT,
	tour_name VARCHAR(64),
	order_played INT
)
BEGIN 
INSERT INTO song (song_name, album_id, tour_name, order_played) VALUES (song_name, album_id, tour_name, order_played);
END //
DELIMITER ;

/*
procedure to add tuple to ticket_sales
*/
DROP PROCEDURE IF EXISTS addTicketSaleTuple;
DELIMITER //
CREATE PROCEDURE addTicketSaleTuple(
	purchase_date DATE, 
	total_cost DECIMAL(10,2), 
	ticket_quantity INT,
	customer_id INT,
	tour_name VARCHAR(64), 
	show_id INT
)
BEGIN 
	INSERT INTO ticket_sales (purchase_date, total_cost, ticket_quantity, customer_id,tour_name,show_id) VALUES (purchase_date, total_cost, ticket_quantity, customer_id,tour_name,show_id);
END //
DELIMITER ;

/*
procedure to add tuple to tour
*/
DROP PROCEDURE IF EXISTS addTourTuple;
DELIMITER //
CREATE PROCEDURE addTourTuple (
	tour_name VARCHAR(64),
	start_date DATE, 
	end_date DATE, 
	tour_status ENUM('Upcoming','Ongoing', 'Ended')
)
BEGIN 
	INSERT INTO tour VALUES (tour_name, start_date, end_date, tour_status);
END //
DELIMITER ;

/*
procedure to add tuple to venue
*/
DROP PROCEDURE IF EXISTS addVenueTuple;
DELIMITER //
CREATE PROCEDURE addVenueTuple(
	location_id INT,
	venue_name VARCHAR(64), 
	capacity INT
)
BEGIN 
	INSERT INTO venue VALUES(location_id, venue_name, capacity);
END //
DELIMITER ;



