package model;

import java.sql.Connection;

import javax.swing.*;

public class LocationTable {

  /**
   * Method to get the data from location table.
   * @param connection the db connection
   * @return table with corresponding data
   */
  public static JTable getLocationTable(Connection connection) {
    String query = "SELECT * FROM location";
    return TableUtil.fetchTableData(connection, query);
  }

  /**
   * Method to add a tuple to the location table
   * @param connection db connection
   * @param city city to add
   * @param stateRegion state/region to add
   * @param country country to add
   * @return true if tuple is successfully added, false otherwise
   */
  public static boolean addLocationTuple(Connection connection, String city, String stateRegion,
                                         String country) {
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
}