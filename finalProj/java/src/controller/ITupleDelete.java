package controller;

import java.sql.Connection;

import javax.swing.*;

/**
 * This is the tuple delete interface which has the method for deleting a specified tuple
 * from a chosen table in the team_sabrina database.
 */
public interface ITupleDelete {

  /**
   * Delete a tuple to the selected db table with its corresponding PK(s) in the input panel.
   * @param tableName chosen table
   * @param inputPanel the panel with user input
   * @param connection db connection
   * @return true if tuple deleted successfully, false otherwise
   */
  boolean deleteTuple(String tableName, JPanel inputPanel, Connection connection);
}