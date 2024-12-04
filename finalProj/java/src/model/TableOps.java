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

  /**
   * Method to delete a tuple from a given table by its primary key value.
   * @param connection db connection
   * @param primaryKey PK of the tuple to be deleted
   * @return true if tuple successfully deleted, false otherwise
   */
  boolean deleteDBTuple(Connection connection, Object[] primaryKey);
  //boolean updateTuple(Connection connection, String tableName, String primaryKey);
}