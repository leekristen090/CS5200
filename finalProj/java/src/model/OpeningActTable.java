package model;

import javax.swing.*;

import java.sql.Connection;

/**
 * This is the opening act table class which helps us to implement CRUD operations on the
 * opening_act table in the team_sabrina db.
 */
public class OpeningActTable implements TableOps {

  /**
   * Method to get the data in the opening_act table in the team_sabrina db.
   * @param connection the db connection
   * @return a table with the corresponding data
   */
  @Override
  public JTable getDBTableData(Connection connection) {
    String query = "SELECT * FROM opening_act";
    return TableUtil.fetchTableData(connection, query);
  }

  /**
   * Method to add a tuple to the opening_act table in the team_sabrina db.
   * @param connection db connection
   * @param parameters to add tuple to table
   * @return true if tuple added successfully, false otherwise
   */
  @Override
  public boolean addDBTuple(Connection connection, Object[] parameters) {
    String actName = (String) parameters[0];
    if (actName == null || actName.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null, "Act name cannot be empty.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "{CALL addOpeningActTuple(?)}";
    try {
      return TableUtil.executeProcedure(connection, call, actName);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error adding tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }

}