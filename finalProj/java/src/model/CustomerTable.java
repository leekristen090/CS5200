
package model;

import javax.swing.*;

import java.sql.Connection;

import static model.TableUtil.isValidEmail;
import static model.TableUtil.isValidPhone;

public class CustomerTable {

  public static JTable getCustomerTable(Connection connection) {
    String query = "SELECT * FROM customer";
    return TableUtil.fetchTableData(connection, query);
  }

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
