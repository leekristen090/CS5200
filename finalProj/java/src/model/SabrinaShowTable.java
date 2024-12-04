package model;

import javax.swing.*;
import java.sql.Connection;

import static model.TableUtil.isValidDate;

/**
 * This is the sabrina show table class which helps us to apply CRUD operations to the
 * sabrina_show table in the team_sabrina database.
 */
public class SabrinaShowTable implements TableOps {

  /**
   * Method to retrieve the data from the sabrina_show table in the team_sabrina db.
   * @param connection db connection
   * @return a table with the corresponding data
   */
  @Override
  public JTable getDBTableData(Connection connection) {
    String query = "SELECT * FROM sabrina_show";
    return TableUtil.fetchTableData(connection, query);
  }

  /**
   * Method to add a tuple to the sabrina_show table in the team_sabrina db.
   * @param connection db connection
   * @param parameters given parameters to add tuple to table
   * @return true if tuple added successfully, false otherwise
   */
  @Override
  public boolean addDBTuple(Connection connection, Object[] parameters) {
    String tour_name = parameters[0].toString();
    String show_id = parameters[1].toString();
    String venue_name = parameters[2].toString();
    String location_id = parameters[3].toString();
    String scheduled_date =parameters[4].toString();
    String show_status = parameters[5].toString();
    if (location_id == null || location_id.trim().isEmpty() ||
            show_id == null || show_id.trim().isEmpty() ||
            venue_name == null || venue_name.trim().isEmpty() ||
            tour_name == null || tour_name.trim().isEmpty() ||
            scheduled_date == null || scheduled_date.isEmpty() ||
            show_status == null || show_status.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null,
              "All fields must be filled in.",
              "Input Error",
              JOptionPane.ERROR_MESSAGE);
      return false;
    }
    if (!isValidDate(scheduled_date)) {
      JOptionPane.showMessageDialog(null, "Invalid date format. "
              + "Please use YYYY-MM-DD.", "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "{CALL addShowTuple(?, ?, ?, ?, ?, ?)}";
    try {
      int sId = Integer.parseInt(show_id);
      int lId = Integer.parseInt(location_id);
      return TableUtil.executeProcedure(connection, call, tour_name, sId, venue_name,
              lId, scheduled_date, show_status);
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
    return false;
  }
}