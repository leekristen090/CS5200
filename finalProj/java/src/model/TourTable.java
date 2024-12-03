package model;

import javax.swing.*;

import java.sql.Connection;

import static model.TableUtil.isValidDate;

/**
 * This is the tour table class which helps us to apply CRUD operations to the tour table in
 * the team_sabrina database.
 */
public class TourTable {

  /**
   * Method to get the data in the tour table in the team_sabrina db.
   * @param connection db connection
   * @return a table with the corresponding data
   */
  public static JTable getTourTable(Connection connection) {
    String query = "SELECT * FROM tour";
    return TableUtil.fetchTableData(connection, query);
  }

  /**
   * Method to add a tuple to the tour table in the team_sabrina db.
   * @param connection db connection
   * @param tourName tour name to be added
   * @param startDate corresponding start date to be added
   * @param endDate corresponding end date to be added
   * @param status corresponding status to be added
   * @return true if tuple added successfully, false otherwise
   */
  public static boolean addTourTuple(Connection connection, String tourName, String startDate,
                                     String endDate, String status) {
    if (tourName == null || tourName.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null, "Tour name cannot be empty.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
    if (startDate == null || startDate.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null, "Start date cannot be empty.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
    if (!isValidDate(startDate) || !isValidDate(endDate)) {
      JOptionPane.showMessageDialog(null, "Invalid date format. "
              + "Please use YYYY-MM-DD.", "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
    if (status == null || status.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null, "Status cannot be empty.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "{CALL addTourTuple(?, ?, ?, ?)}";

    try {
      return TableUtil.executeProcedure(connection, call, tourName, startDate, endDate, status);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error adding tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }
}
