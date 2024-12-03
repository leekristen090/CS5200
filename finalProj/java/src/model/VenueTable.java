package model;

import javax.swing.*;
import java.sql.Connection;

/**
 * This is the tour table class which helps to apply CRUD operations to the venue table
 * in the team_sabrina db.
 */
public class VenueTable {

  /**
   * Method to get data from the venue table.
   * @param connection db connection
   * @return a table with the corresponding data
   */
  public static JTable getVenueTable(Connection connection) {
    String sql = "SELECT * FROM venue";
    return TableUtil.fetchTableData(connection, sql);
  }

  /**
   * Method to add a tuple to the venue table in the team_sabrina db.
   * @param connection db connection
   * @param locationId corresponding location id
   * @param venueName venue name to be added
   * @param capacity corresponding venue capacity
   * @return true if tuple added successfully, false otherwise
   */
  public static boolean addVenueTuple(Connection connection, String locationId, String venueName,
                                      String capacity) {
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