
/*
--------------------------------------------- UPDATE ---------------------------------------------
*/

/*
update album tuple
*/
DROP PROCEDURE IF EXISTS updateAlbumTuple;
DELIMITER //
CREATE PROCEDURE updateAlbumTuple(
	chosen_album_id INT,
	new_album_name VARCHAR(64), 
	new_release_date DATE 
)
BEGIN 
	UPDATE album
    SET 
		album_name = new_album_name,
		release_date = new_release_date
    WHERE album_id = chosen_album_id;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given album_id.'
    );
END //
DELIMITER ;

/*
update tuple in customer
*/
DROP PROCEDURE IF EXISTS updateCustomerTuple;
DELIMITER //
CREATE PROCEDURE updateCustomerTuple (
	p_customer_id INT,
	p_first_name VARCHAR(256), 
	p_last_name VARCHAR(256), 
	p_phone VARCHAR(15),
	p_email VARCHAR(256)
)
BEGIN 
	UPDATE customer
    SET 
    first_name = p_first_name,
    last_name = p_last_name,
    phone = p_phone,
    email = p_email
    WHERE customer_id = p_customer_id;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given customer_id.'
    );
END //
DELIMITER ;

/*
update location tuple
*/
DROP PROCEDURE IF EXISTS updateLocationTuple;
DELIMITER //
CREATE PROCEDURE updateLocationTuple(
	p_location_id INT,
	p_city VARCHAR(64),
	p_state_region VARCHAR(64),
	p_country VARCHAR(64)
)
BEGIN 
	UPDATE location
    SET 
		location_id = p_city,
        state_region = p_state_region,
        country = p_country
    WHERE location_id = p_location_id;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given location_id.'
    );
END //
DELIMITER ;

/*
update tuple in opening_act
*/
DROP PROCEDURE IF EXISTS updateOpeningActTuple;
DELIMITER //
CREATE PROCEDURE updateOpeningActTuple(
	p_act_id INT,
	p_act_name VARCHAR(64)
)
BEGIN
	UPDATE opening_act
    SET 
		act_name = p_act_name
	WHERE act_id = p_act_id;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given act_id.'
    );
END //
DELIMITER ;

/*
update tuple in opening_to_show
*/
DROP PROCEDURE IF EXISTS updateOpenToShowTuple;
DELIMITER //
CREATE PROCEDURE updateOpenToShowTuple(
	p_tour_name VARCHAR(64),
	p_show_id INT,
	p_act_id INT,
	p_performance_order INT
)
BEGIN 
	UPDATE opening_to_show
    SET 
		act_id = p_act_id,
        performance_order = p_performance_order
    WHERE tour_name = p_tour_name AND show_id = p_show_id;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given PKs.'
    );
END //
DELIMITER ;

/*
update tuple in abrina_show
*/
DROP PROCEDURE IF EXISTS updateShowTuple;
DELIMITER //
CREATE PROCEDURE updateShowTuple (
	p_tour_name VARCHAR(64), 
	p_show_id INT,
	p_venue_name VARCHAR(64),
	p_location_id INT,
	p_scheduled_date DATE, 
	p_show_status ENUM('Upcoming', 'Cancelled', 'Completed')
)
BEGIN 
	UPDATE sabrina_show
    SET 
		venue_name = p_venue_name,
        location_id = p_location_id,
        scheduled_date = p_scheduled_date,
        show_status = p_show_status
    WHERE tour_name = p_tour_name AND show_id = p_show_id;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given PKs.'
    );
END //
DELIMITER ;

/*
update song tuple
*/
DROP PROCEDURE IF EXISTS updateSongTuple;
DELIMITER //
CREATE PROCEDURE updateSongTuple(
	p_song_id INT,
	p_song_name VARCHAR(64),  
	p_album_id INT,
	p_tour_name VARCHAR(64),
	p_order_played INT
)
BEGIN 
	UPDATE song
    SET 
		song_name = p_song_name,
        album_id = p_album_id,
        tour_name = p_tour_name,
        order_played = p_order_played
    WHERE song_id = p_song_id;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given song_id.'
    );
END //
DELIMITER ;

/*
update ticket_sales tuple
*/
DROP PROCEDURE IF EXISTS updateTicketTuple;
DELIMITER //
CREATE PROCEDURE updateTicketTuple(
	p_transaction_id INT, 
	p_purchase_date DATE, 
	p_total_cost DECIMAL(10,2), 
	p_ticket_quantity INT,
	p_customer_id INT,
	p_tour_name VARCHAR(64), 
	p_show_id INT
) 
BEGIN 
	UPDATE ticket_sales
    SET 
		purchase_date = p_purchase_date,
        total_cost = p_total_cost,
        ticket_quantity = p_ticket_quantity,
        customer_id = p_customer_id,
        tour_name = p_tour_name,
        show_id = p_show_id
    WHERE transaction_id = p_transaction_id;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given transaction_id.'
    );
END //
DELIMITER ;

/*
update tour tuple
*/
DROP PROCEDURE IF EXISTS updateTourTuple;
DELIMITER //
CREATE PROCEDURE updateTourTuple(
	p_tour_name VARCHAR(64),
	p_start_date DATE, 
	p_end_date DATE, 
	p_tour_status ENUM('Upcoming','Ongoing', 'Ended') 
)
BEGIN
	UPDATE tour
    SET 
		start_date = p_start_date,
        end_date = p_end_date,
        tour_status = p_tour_status
    WHERE tour_name = p_tour_name;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given tour_name.'
    );
END //
DELIMITER ;

/*
update venue tuple
*/
DROP PROCEDURE IF EXISTS updateVenueTuple;
DELIMITER //
CREATE PROCEDURE updateVenueTuple(
	p_location_id INT,
	p_venue_name VARCHAR(64), 
	p_capacity INT
)
BEGIN 
	UPDATE venue
    SET 
		capacity = p_capacity
    WHERE location_id = p_location_id AND venue_name = p_venue_name;
    CALL checkRowCount(
        'Row successfully updated.',
        'No rows found with the given PKs.'
    );
END //
DELIMITER ;






