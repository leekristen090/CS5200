package model;

import java.sql.Connection;
import javax.swing.*;

/**
 * This is the location table class which handles CRUD operations on the location table in
 * the team_sabrina database.
 */
public class LocationTable implements TableOps {

  /**
   * Method to get the data from location table.
   * @param connection the db connection
   * @return table with corresponding data
   */
  @Override
  public JTable getDBTableData(Connection connection) {
    String query = "SELECT * FROM location";
    return TableUtil.fetchTableData(connection, query);
  }

  /**
   * Method to add a tuple to the location table
   * @param connection db connection
   * @param parameters the given parameters for location table
   * @return true if tuple is successfully added, false otherwise
   */
  @Override
  public boolean addDBTuple(Connection connection, Object[] parameters) {
    String city = (String) parameters[0];
    String stateRegion = (String) parameters[1];
    String country = (String) parameters[2];
    if (city == null || city.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null, "City cannot be empty.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
    if (country == null || country.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null, "Country name cannot be empty.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "{CALL addLocationTuple(?, ?, ?)}";
    try {
      return TableUtil.executeProcedure(connection, call, city, stateRegion, country);
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
    if (primaryKey.length != 1) {
      JOptionPane.showMessageDialog(null,
              "Invalid number of location parameters.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }


    String call = "{CALL deleteLocationTuple(?)}";
    try {
      int lid = Integer.parseInt(primaryKey[0].toString());
      return TableUtil.executeProcedure(connection, call, lid);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error deleting tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }

  /**
   * Method to update a tuple from location table with user inputs.
   *
   * @param connection db connection
   * @param parameters parameters for the location table
   * @return true if tuple updated successfully, false otherwise
   */
  @Override
  public boolean updateDBTuple(Connection connection, Object[] parameters) {
    String locationID = (String) parameters[0];
    String city = (String) parameters[1];
    String stateRegion = (String) parameters[2];
    String country = (String) parameters[3];

    if (locationID == null || locationID.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null, "Location ID cannot be empty.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    int id;
    try {
      id = Integer.parseInt(locationID);
    } catch (NumberFormatException e) {
      JOptionPane.showMessageDialog(null, "Invalid location ID format.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    if (city == null || city.trim().isEmpty()) {
      city = null;
    }
    if (stateRegion == null || stateRegion.trim().isEmpty()) {
      stateRegion = null;
    }
    if (country == null || country.trim().isEmpty()) {
      country = null;
    }

    String call = "{CALL updateLocationTuple(?, ?, ?, ?)}";
    try {
      return TableUtil.executeProcedure(connection, call, id, city, stateRegion, country);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error updating tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }

}