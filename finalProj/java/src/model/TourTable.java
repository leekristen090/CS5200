package model;

import javax.swing.*;
import java.sql.Connection;
import static model.TableUtil.isValidDate;

/**
 * This is the tour table class which helps us to apply CRUD operations to the tour table in
 * the team_sabrina database.
 */
public class TourTable implements TableOps {

  /**
   * Method to get the data in the tour table in the team_sabrina db.
   * @param connection db connection
   * @return a table with the corresponding data
   */
  @Override
  public JTable getDBTableData(Connection connection) {
    String query = "SELECT * FROM tour";
    return TableUtil.fetchTableData(connection, query);
  }

  /**
   * Method to add a tuple to the tour table in the team_sabrina db.
   * @param connection db connection
   * @param parameters given parameters to add tuple to table
   * @return true if tuple added successfully, false otherwise
   */
  @Override
  public boolean addDBTuple(Connection connection, Object[] parameters) {
    String tourName = (String) parameters[0];
    String startDate = (String) parameters[1];
    String endDate = (String) parameters[2];
    String status = (String) parameters[3];
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
              "Invalid number of tour parameters.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "{CALL deleteTourTuple(?, ?)}";
    try {
      String tour_name = primaryKey[0].toString();
      return TableUtil.executeProcedure(connection, call, tour_name);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error deleting tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }

  /**
   * Method to update a tuple from tour table with user inputs.
   *
   * @param connection db connection
   * @param parameters parameters for the tour table
   * @return true if tuple updated successfully, false otherwise
   */
  @Override
  public boolean updateDBTuple(Connection connection, Object[] parameters) {
    return false;
  }

}