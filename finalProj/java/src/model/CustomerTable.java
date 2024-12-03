
package model;

import javax.swing.*;

import java.sql.Connection;

import static model.TableUtil.isValidEmail;
import static model.TableUtil.isValidPhone;

/**
 * This is the customer table class which helps us apply CRUD operations to the customer table.
 */
public class CustomerTable {

  /**
   * Method to get data from the customer database table.
   * @param connection db connection
   * @return table with corresponding data
   */
  public static JTable getCustomerTable(Connection connection) {
    String query = "SELECT * FROM customer";
    return TableUtil.fetchTableData(connection, query);
  }

  /**
   * Method to add a customer tuple.
   * @param connection db connection
   * @param fName customer first name
   * @param lName customer last name
   * @param phone customer phone number
   * @param email customer email
   * @return true if tuple added successfully, false otherwise
   */
  public static boolean addCustomerTuple(Connection connection, String fName, String lName,
                                         String phone, String email) {
    if (fName == null || fName.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null, "First name cannot be empty.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
    if (lName == null || lName.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null, "Last name cannot be empty.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
    if (phone == null || !isValidPhone(phone)) {
      JOptionPane.showMessageDialog(null, "Invalid phone number. "
              + "Please enter a valid number.", "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
    if (email == null || !isValidEmail(email)) {
      JOptionPane.showMessageDialog(null, "Invalid email address. "
              + " Please enter a valid email.", "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "{CALL addCustomerTuple(?, ?, ?, ?)}";

    try {
      return TableUtil.executeProcedure(connection, call, fName, lName, phone, email);
    } catch (Exception e) {
      // Database-specific error handling
      JOptionPane.showMessageDialog(null,
              "Error adding tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }

}
