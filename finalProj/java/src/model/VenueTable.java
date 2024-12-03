package model;

import javax.swing.*;
import java.sql.Connection;

/**
 * This is the tour table class which helps to apply CRUD operations to the venue table
 * in the team_sabrina db.
 */
public class VenueTable implements TableOps {

  /**
   * Method to get data from the venue table.
   * @param connection db connection
   * @return a table with the corresponding data
   */
  @Override
  public JTable getDBTableData(Connection connection) {
    String sql = "SELECT * FROM venue";
    return TableUtil.fetchTableData(connection, sql);
  }

  /**
   * Method to add a tuple to the venue table in the team_sabrina db.
   * @param connection db connection
   * @param parameters given parameters to add tuple to table
   * @return true if tuple added successfully, false otherwise
   */
  @Override
  public boolean addDBTuple(Connection connection, Object[] parameters) {
    String locationId = (String) parameters[0];
    String venueName = (String) parameters[1];
    String capacity = (String) parameters[2];
    if (locationId == null || locationId.trim().isEmpty() ||
            venueName == null || venueName.trim().isEmpty() ||
            capacity == null || capacity.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null,
              "All fields must be filled in.",
              "Input Error",
              JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "{CALL addVenueTuple(?, ?, ?)}";

    try {
      int location_Id = Integer.parseInt(locationId);
      int cap = Integer.parseInt(capacity);
      return TableUtil.executeProcedure(connection, call, location_Id, venueName, cap);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error adding tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }

}