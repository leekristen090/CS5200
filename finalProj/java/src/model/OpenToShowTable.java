package model;

import javax.swing.*;

import java.sql.Connection;

/**
 * This is the open to show table class which helps us apply CRUD operations to the
 * opening_to_show table in the team_sabrina database.
 */
public class OpenToShowTable {

  /**
   * Method to retrieve the data in the opening_to_show table in the team_sabrina db.
   * @param connection db connection
   * @return a table with the corresponding data
   */
  public static JTable getOpeningToShowTable(Connection connection) {
    String query = "SELECT * FROM opening_to_show";
    return TableUtil.fetchTableData(connection, query);
  }

  /**
   * Method to add a tuple to the opening_to_show table in the team_sabrina db.
   * @param connection db connection
   * @param tourName corresponding tour name
   * @param showId corresponding show id
   * @param actId corresponding act id
   * @param performanceOrder in which order the opening act played
   * @return true if tuple added successfully, false otherwise
   */
  public static boolean addOpenToShowTuple(Connection connection, String tourName, String showId,
                                           String actId, String performanceOrder) {
    if (tourName == null || tourName.trim().isEmpty() ||
            showId == null || showId.trim().isEmpty() ||
            actId == null || actId.trim().isEmpty() ||
            performanceOrder == null || performanceOrder.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null,
              "All fields must be filled in.",
              "Input Error",
              JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "{CALL addOpenToShowTuple(?, ?, ?, ?)}";
    try {
      int sId = Integer.parseInt(showId);
      int aId = Integer.parseInt(actId);
      int order = Integer.parseInt(performanceOrder);
      return TableUtil.executeProcedure(connection, call, tourName, sId, aId, order);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error adding tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }
}