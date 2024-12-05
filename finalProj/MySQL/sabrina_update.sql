
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