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
              "Invalid number of album parameters.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "CALL deleteAlbumTuple(?)";
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
   * Method to update a tuple from album table with user inputs.
   *
   * @param connection db connection
   * @param parameters parameters for the album table
   * @return true if tuple updated successfully, false otherwise
   */
  @Override
  public boolean updateDBTuple(Connection connection, Object[] parameters) {
    return false;
  }

}