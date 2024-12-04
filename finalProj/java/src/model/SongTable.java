package model;

import javax.swing.*;
import java.sql.Connection;

/**
 * This is the song table class which helps us to apply CRUD operations to the song table in
 * the team_sabrina database.
 */
public class SongTable implements TableOps {

  /**
   * Method to retrieve data from the song table in the team_sabrina db.
   * @param connection db connection
   * @return a table with the corresponding data
   */
  @Override
  public JTable getDBTableData(Connection connection) {
    String query = "SELECT * FROM song";
    return TableUtil.fetchTableData(connection, query);
  }

  /**
   * Method to add a tuple to the song table in the team_sabrina db.
   * @param connection db connection
   * @param parameters given parameters to add tuple to table
   * @return true if tuple added successfully, false otherwise
   */
  @Override
  public boolean addDBTuple(Connection connection, Object[] parameters) {
    String songName = (String) parameters[0];
    String albumId = (String) parameters[1];
    String tourName = (String) parameters[2];
    String orderPlayed = (String) parameters[3];
    if (songName == null || songName.trim().isEmpty() ||
            albumId == null || albumId.trim().isEmpty() ||
            tourName == null || tourName.trim().isEmpty() ||
            orderPlayed == null || orderPlayed.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null,
              "All fields must be filled in.",
              "Input Error",
              JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "{CALL addSongTuple(?, ?, ?, ?)}";
    try {
      int aId = Integer.parseInt(albumId);
      int oP = Integer.parseInt(orderPlayed);
      return TableUtil.executeProcedure(connection, call, songName, aId, tourName, oP);
    }  catch (Exception e) {
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
              "Invalid number of song parameters.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "{CALL deleteSongTuple(?)}";
    try {
      int songId = Integer.parseInt(primaryKey[0].toString());
      return TableUtil.executeProcedure(connection, call, songId);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error deleting tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }

}
