package model;

import javax.swing.*;

import java.sql.Connection;

/**
 * This is the open to show table class which helps us apply CRUD operations to the
 * opening_to_show table in the team_sabrina database.
 */
public class OpenToShowTable implements TableOps {

  /**
   * Method to retrieve the data in the opening_to_show table in the team_sabrina db.
   * @param connection db connection
   * @return a table with the corresponding data
   */
  @Override
  public JTable getDBTableData(Connection connection) {
    String query = "SELECT * FROM opening_to_show";
    return TableUtil.fetchTableData(connection, query);
  }

  /**
   * Method to add a tuple to the opening_to_show table in the team_sabrina db.
   * @param connection db connection
   * @param parameters parameters for adding tuple to table
   * @return true if tuple added successfully, false otherwise
   */
  @Override
  public boolean addDBTuple(Connection connection, Object[] parameters) {
    String tourName = (String) parameters[0];
    String showId = (String) parameters[1];
    String actId = (String) parameters[2];
    String performanceOrder = (String) parameters[3];
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