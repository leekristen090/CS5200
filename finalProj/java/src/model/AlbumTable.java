package model;

import javax.swing.*;
import java.sql.Connection;

import static model.TableUtil.isValidDate;

/**
 * This is the album table class which handles all CRUD operations on the album table.
 */
public class AlbumTable implements TableOps {

  /**
   * retrieve and show the album table.
   * @param connection db connection
   * @return the album table
   */
  @Override
  public JTable getDBTableData(Connection connection) {
    String query = "SELECT * FROM album";
    return TableUtil.fetchTableData(connection, query);
  }

  /**
   * Add tuple to album table.
   * @param connection the connection
   * @param parameters given parameters for the album table
   * @return true if tuple added successfully, false otherwise
   */
  @Override
  public boolean addDBTuple(Connection connection, Object[] parameters) {
    if (parameters.length != 2) {
      JOptionPane.showMessageDialog(null,
              "Invalid number of album parameters.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String albumName = (String) parameters[0];
    String releaseDate = (String) parameters[1];
    if (albumName == null || albumName.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null, "Album name cannot be empty.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    if (!isValidDate(releaseDate)) {
      JOptionPane.showMessageDialog(null, "Invalid date format. "
              + "Please use YYYY-MM-DD.", "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
    String call = "{CALL addAlbumTuple(?, ?)}";
    try {
      return TableUtil.executeProcedure(connection, call, albumName, releaseDate);
    } catch (Exception e) {
      // Database-specific error handling
      JOptionPane.showMessageDialog(null,
              "Error adding tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }

  /**
   * Method to delete a tuple from a given table by its primary key value.
   *
   * @param connection db connection
   * @param primaryKey PK of the tuple to be deleted
   * @return true if tuple successfully deleted, false otherwise
   */
  @Override
  public boolean deleteDBTuple(Connection connection, Object[] primaryKey) {
    if (primaryKey.length != 1) {
      JOptionPane.showMessageDialog(null,
              "Invalid number of album parameters for deletion.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "{CALL deleteAlbumTuple(?)}";
    try {
      int albumId = Integer.parseInt(primaryKey[0].toString());
      return TableUtil.executeProcedure(connection, call, albumId);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error deleting tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }
  /**
   * Method to update a tuple in the album table.
   * @param connection the database connection
   * @param parameters array containing album_id, new_album_name, and new_release_date
   * @return true if the tuple was successfully updated, false otherwise
   */
  public boolean updateDBTuple(Connection connection, Object[] parameters) {
    if (parameters.length != 3) {
      JOptionPane.showMessageDialog(null,
              "Invalid number of album parameters.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String albumId = (String) parameters[0];
    String newAlbumName = (String) parameters[1];
    String newReleaseDate = (String) parameters[2];

    if (albumId == null || albumId.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null, "Album ID cannot be empty.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    int id;
    try {
      id = Integer.parseInt(albumId);
    } catch (NumberFormatException e) {
      JOptionPane.showMessageDialog(null, "Invalid album ID format.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    // Replace empty strings with null for the stored procedure
    if (newAlbumName == null || newAlbumName.trim().isEmpty()) {
      newAlbumName = null; // Pass null for album name
    }
    if (newReleaseDate == null || newReleaseDate.trim().isEmpty()) {
      newReleaseDate = null; // Pass null for release date
    } else if (!isValidDate(newReleaseDate)) {
      JOptionPane.showMessageDialog(null, "Invalid date format. "
              + "Please use YYYY-MM-DD.", "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    // Prepare and execute stored procedure
    String call = "{CALL updateAlbumTuple(?, ?, ?)}";
    try {
      return TableUtil.executeProcedure(connection, call, id, newAlbumName, newReleaseDate);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error updating tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }


}