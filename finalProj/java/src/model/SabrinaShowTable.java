package model;

import javax.swing.*;
import java.sql.Connection;

import static model.TableUtil.isValidDate;

/**
 * This is the sabrina show table class which helps us to apply CRUD operations to the
 * sabrina_show table in the team_sabrina database.
 */
public class SabrinaShowTable {

  /**
   * Method to retrieve the data from the sabrina_show table in the team_sabrina db.
   * @param connection db connection
   * @return a table with the corresponding data
   */
  public static JTable getSabrinaShowTable(Connection connection) {
    String query = "SELECT * FROM sabrina_show";
    return TableUtil.fetchTableData(connection, query);
  }

  /**
   * Method to add a tuple to the sabrina_show table in the team_sabrina db.
   * @param connection db connection
   * @param tour_name corresponding tour_name
   * @param show_id corresponding show_id
   * @param venue_name corresponding venue_name
   * @param location_id corresponding location_id
   * @param scheduled_date the scheduled date
   * @param show_status the show status
   * @return true if tuple added successfully, false otherwise
   */
  public static boolean addShowTuple(Connection connection,String tour_name, String show_id,
                                     String venue_name, String location_id,
                                     String scheduled_date, String show_status) {
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
}