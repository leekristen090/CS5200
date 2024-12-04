package controller;

import java.sql.Connection;

import javax.swing.*;

/**
 * This is the tuple update interface which has the method for updating a specified tuple
 * from a chosen table in the team_sabrina database.
 */
public interface ITupleUpdate {

  /**
   * Update a tuple in the selected db table with the corresponding user input from the
   * input panel.
   * @param tableName selected table
   * @param inputPanel user input panel
   * @param connection db connection
   * @return true if tuple updated successfully, false otherwise
   */
  boolean updateTuple(String tableName, JPanel inputPanel, Connection connection);
}