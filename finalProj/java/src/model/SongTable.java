package model;

import javax.swing.*;

import java.sql.Connection;

/**
 * This is the song table class which helps us to apply CRUD operations to the song table in
 * the team_sabrina database.
 */
public class SongTable {

  /**
   * Method to retrieve data from the song table in the team_sabrina db.
   * @param connection db connection
   * @return a table with the corresponding data
   */
  public static JTable getSongTable(Connection connection) {
    String query = "SELECT * FROM song";
    return TableUtil.fetchTableData(connection, query);
  }

  /**
   * Method to add a tuple to the song table in the team_sabrina db.
   * @param connection db connection
   * @param songName name of song to be added
   * @param albumId corresponding album id
   * @param tourName corresponding tour name
   * @param orderPlayed the order played
   * @return true if tuple added successfully, false otherwise
   */
  public static boolean addSongTuple(Connection connection, String songName, String albumId,
                                     String tourName, String orderPlayed) {
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
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error adding tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

  }

}