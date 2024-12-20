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

  /**
   * Method to delete a tuple from a given table by its primary key value.
   *
   * @param connection db connection
   * @param primaryKey PK of the tuple to be deleted
   * @return true if tuple successfully deleted, false otherwise
   */
  @Override
  public boolean deleteDBTuple(Connection connection, Object[] primaryKey) {
    if (primaryKey.length != 2) {
      JOptionPane.showMessageDialog(null,
              "Invalid number of venue parameters.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "{CALL deleteVenueTuple(?, ?)}";
    try {
      int locationID = Integer.parseInt(primaryKey[0].toString());
      String venueName = primaryKey[1].toString();
      return TableUtil.executeProcedure(connection, call, locationID, venueName);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error deleting tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }  }

  /**
   * Method to update a tuple from venue table with user inputs.
   *
   * @param connection db connection
   * @param parameters parameters for the venue table
   * @return true if tuple updated successfully, false otherwise
   */
  @Override
  public boolean updateDBTuple(Connection connection, Object[] parameters) {
    String locationId = (String) parameters[0];
    String venueName = (String) parameters[1];
    String capacity = (String) parameters[2];
    if (locationId == null || locationId.trim().isEmpty()
            || venueName == null || venueName.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null,
              "Location ID and/or venue name cannot be empty.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
    int location_Id = Integer.parseInt(locationId);
    if (capacity == null || capacity.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null,
              "Must have input for capacity for update.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
    int cap = Integer.parseInt(capacity);

    String call = "{CALL updateVenueTuple(?, ?, ?)}";
    try {
      return TableUtil.executeProcedure(connection, call, location_Id, venueName, cap);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error updating tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }

}