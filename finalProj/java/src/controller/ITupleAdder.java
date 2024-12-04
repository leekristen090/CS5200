package controller;

import java.sql.Connection;

import javax.swing.*;

/**
 * This is the ITupleAdder interface which has the method for adding a tuple to a specified
 * table.
 */
public interface ITupleAdder {

  /**
   * Add a tuple to a given table in the team_sabrina database.
   * @param tableName the chosen table to add a tuple to
   * @param inputPanel the input panel with user input
   * @param connection db connection
   * @return true if tuple added successfully, false otherwise
   */
  boolean addTuple(String tableName, JPanel inputPanel, Connection connection);
}