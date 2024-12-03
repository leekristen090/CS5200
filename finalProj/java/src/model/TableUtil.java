package model;

import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import javax.swing.JOptionPane;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * The table util class will help us preform CRUD operations on the tables in the database. There
 * are also helper functions to validate the inputs for add and update.
 */
public class TableUtil {

  /**
   * Method to get table data from a given table in a database.
   * @param connection the db connection
   * @param query the query for table
   * @return a table with corresponding data
   */
  public static JTable fetchTableData(Connection connection, String query) {
    JTable table = new JTable();

    try (Statement statement = connection.createStatement()) {
      ResultSet resultSet = statement.executeQuery(query);

      // Get column count
      int columnCount = resultSet.getMetaData().getColumnCount();
      String[] columnNames = new String[columnCount];
      for (int i = 0; i < columnCount; i++) {
        columnNames[i] = resultSet.getMetaData().getColumnName(i + 1);
      }

      // Create the table model
      DefaultTableModel model = new DefaultTableModel();
      model.setColumnIdentifiers(columnNames);

      // Add data to table
      while (resultSet.next()) {
        Object[] row = new Object[columnCount];
        for (int i = 0; i < columnCount; i++) {
          row[i] = resultSet.getObject(i + 1);
        }
        model.addRow(row);
      }

      table.setModel(model);

    } catch (SQLException e) {
      e.printStackTrace();
      JOptionPane.showMessageDialog(null, "Error loading data: "
              + e.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
    }

    return table;
  }

  /**
   * Executes a stored procedure with the given parameters.
   * @param connection The database connection.
   * @param procedureCall The stored procedure call string (e.g., "{CALL ProcedureName(?, ?, ?)}").
   * @param parameters The parameters to pass to the stored procedure.
   * @return true if the procedure executes successfully, false otherwise.
   */
  public static boolean executeProcedure(Connection connection, String procedureCall,
                                         Object... parameters) {
    //throws java.sql.SQLException
    try (CallableStatement callableStatement = connection.prepareCall(procedureCall)) {
      // Set parameters
      for (int i = 0; i < parameters.length; i++) {
        callableStatement.setObject(i + 1, parameters[i]);
      }

      // Execute procedure
      callableStatement.execute();
      return true;

    } catch (SQLException e) {
      e.printStackTrace();
      JOptionPane.showMessageDialog(null,
              "Error executing stored procedure: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }

  /**
   *  Method to validate the date input.
   * @param date the date that was input
   * @return true if valid input, false otherwise
   */
  public static boolean isValidDate(String date) {
    try {
      // Try parsing the input as a valid date in YYYY-MM-DD format
      java.time.LocalDate.parse(date);
      return true;
    } catch (Exception e) {
      return false; // Parsing failed, so the date is invalid
    }
  }

  /**
   * Method to check validity of phone number input.
   * @param phone phone number that was input
   * @return true if valid phone number, false otherwise
   */
  public static boolean isValidPhone(String phone) {
    // Regex for various valid phone number formats
    return phone.matches("^(\\+\\d{1,3})?[- .]?\\(?\\d{1,4}\\)?[- .]?\\d{1,4}[- .]?\\d{1,9}$");
  }

  /**
   * Method to check validity of email address.
   * @param email email that was input
   * @return true if valid email, false otherwise
   */
  public static boolean isValidEmail(String email) {
    // Simple regex for email validation
    return email.matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$");
  }


}

