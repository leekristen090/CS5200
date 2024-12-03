package model;

import java.sql.Connection;
import javax.swing.*;

public interface TableOps {

  /**
   * Method to get data from a given table in the database.
   * @param connection db connection
   * @return a table with the corresponding data for the chosen table
   */
  JTable getDBTableData(Connection connection);

  /**
   * Method to add a tuple to a chosen table in the database.
   * @param connection db connection
   * @param parameters given parameters based on chosen tables
   * @return true if tuple added successfully, false otherwise
   */
  boolean addDBTuple(Connection connection, Object[] parameters);
  //boolean updateTuple(Connection connection, Object... parameters);
  //boolean deleteTuple(Connection connection, Object... parameters);
}