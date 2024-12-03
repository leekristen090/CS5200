package model;

import javax.swing.*;

import java.sql.Connection;

import static model.TableUtil.isValidDate;

/**
 * This is the album table class which handles all CRUD operations on the album table.
 */
public class AlbumTable {

  /**
   * retrieve and show the album table.
   * @param connection our connection
   * @return the album table
   */
  public static JTable getAlbumTable(Connection connection) {
    String query = "SELECT * FROM album";
    return TableUtil.fetchTableData(connection, query);
  }

  /**
   * Add tuple to album table.
   * @param connection the connection
   * @param albumName the album name to add
   * @param releaseDate the release date
   * @return the tuple
   */
  public static boolean addTupleWithProcedure(Connection connection, String albumName,
                                              String releaseDate) {
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
    //return TableUtil.executeProcedure(connection, call, albumName, releaseDate);
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

}
