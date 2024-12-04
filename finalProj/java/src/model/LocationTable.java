package model;

import java.sql.Connection;

import javax.swing.*;

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

    int lid = Integer.parseInt(primaryKey[0].toString());
    String call = "{CALL deleteLocationTuple(?)}";
    try {
      return TableUtil.executeProcedure(connection, call, lid);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error deleting tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }
}