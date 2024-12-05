
package model;

import javax.swing.*;
import java.sql.Connection;

import static model.TableUtil.isValidEmail;
import static model.TableUtil.isValidPhone;

/**
 * This is the customer table class which helps us apply CRUD operations to the customer table.
 */
public class CustomerTable implements TableOps {

  /**
   * Method to get data from the customer database table.
   * @param connection db connection
   * @return table with corresponding data
   */
  @Override
  public JTable getDBTableData(Connection connection) {
    String query = "SELECT * FROM customer";
    return TableUtil.fetchTableData(connection, query);
  }

  /**
   * Method to add a customer tuple.
   * @param connection db connection
   * @param parameters given for customer table
   * @return true if tuple added successfully, false otherwise
   */
  @Override
  public boolean addDBTuple(Connection connection, Object[] parameters) {
    String fName = (String) parameters[0];
    String lName = (String) parameters[1];
    String phone  = (String) parameters[2];
    String email = (String) parameters[3];
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
              "Invalid number of customer parameters for deletion.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "{CALL deleteCustomerTuple(?)}";
    try {
      int cId = Integer.parseInt(primaryKey[0].toString());
      return TableUtil.executeProcedure(connection, call, cId);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error deleting tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }

  /**
   * Method to update a tuple from customer table with user inputs.
   *
   * @param connection db connection
   * @param parameters parameters for the customer table
   * @return true if tuple updated successfully, false otherwise
   */
  @Override
  public boolean updateDBTuple(Connection connection, Object[] parameters) {
    if (parameters.length != 5) {
      JOptionPane.showMessageDialog(null,
              "Invalid number of customer parameters for update.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
    String custId = (String) parameters[0];
    String firstName = (String) parameters[1];
    String lastName = (String) parameters[2];
    String phone = (String) parameters[3];
    String email = (String) parameters[4];
    if (custId == null || custId.trim().isEmpty()) {
      JOptionPane.showMessageDialog(null, "Customer ID cannot be empty.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    int id;
    try {
      id = Integer.parseInt(custId);
    } catch (NumberFormatException e) {
      JOptionPane.showMessageDialog(null, "Invalid customer ID format.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
    if (firstName == null || firstName.trim().isEmpty()) {
      firstName = null;
    }
    if (lastName == null || lastName.trim().isEmpty()) {
      lastName = null;
    }
    if (phone == null || phone.trim().isEmpty()) {
      phone = null;
    } else if (!isValidPhone(phone)) {
      JOptionPane.showMessageDialog(null, "Invalid phone number. "
              + "Please enter a valid number.", "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
    if (email == null || email.trim().isEmpty()) {
      email = null;
    } else if (!isValidEmail(email)) {
      JOptionPane.showMessageDialog(null, "Invalid email address. "
              + " Please enter a valid email.", "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "{CALL updateCustomerTuple(?, ?, ?, ?, ?)}";
    try {
      return TableUtil.executeProcedure(connection, call, id, firstName, lastName, phone, email);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error updating tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }

}