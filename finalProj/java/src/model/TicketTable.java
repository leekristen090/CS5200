package model;

import javax.swing.*;
import java.sql.Connection;

/**
 * This is the ticket table class which helps to apply CRUD operations to the ticket_sales table
 * in the team_sabrina database.
 */
public class TicketTable implements TableOps {

  /**
   * Method to retrieve data from the ticket_sales table in the team_sabrina db.
   * @param connection db connection
   * @return a table with the corresponding data
   */
  @Override
  public JTable getDBTableData(Connection connection) {
    String query = "SELECT * FROM ticket_sales";
    return TableUtil.fetchTableData(connection, query);
  }

  // (purchase_date, total_cost, ticket_quantity, customer_id,tour_name,show_id)

  /**
   * Method to add a tuple to the ticket_sales table in the team_sabrina db.
   * @param connection db connection
   * @param parameters given parameters to add tuple to table
   * @return true if tuple added successfully, false otherwise
   */
  @Override
  public boolean addDBTuple(Connection connection, Object[] parameters) {
    String purchaseDate = (String) parameters[0];
    String cost = (String) parameters[1];
    String quantity = (String) parameters[2];
    String custId = (String) parameters[3];
    String tourName = (String) parameters[4];
    String showId = (String) parameters[5];
    if (purchaseDate == null || purchaseDate.isEmpty() ||
            cost == null || cost.isEmpty() ||
            quantity == null || quantity.isEmpty() ||
            custId == null || custId.isEmpty() ||
            tourName == null || tourName.isEmpty() ||
            showId == null || showId.isEmpty()) {
      JOptionPane.showMessageDialog(null,
              "All fields must be filled in.",
              "Input Error",
              JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "{CALL addTicketSaleTuple(?, ?, ?, ?, ?, ?)}";
    try {
      int q = Integer.parseInt(quantity);
      int cId = Integer.parseInt(custId);
      int sId = Integer.parseInt(showId);
      double totalCost = Double.parseDouble(cost);
      return TableUtil.executeProcedure(connection, call, purchaseDate, totalCost, q, cId,
              tourName, sId);
    } catch (NumberFormatException ex) {
      JOptionPane.showMessageDialog(null,
              "Invalid input for numeric fields (ticket quantity, customer ID, show ID, or total cost).",
              "Input Error",
              JOptionPane.ERROR_MESSAGE);
      return false;
    } catch (Exception e) {
      e.printStackTrace();
      JOptionPane.showMessageDialog(null,
              "Error adding ticket sale tuple: " + e.getMessage(),
              "Database Error",
              JOptionPane.ERROR_MESSAGE);
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
              "Invalid number of ticket parameters.",
              "Input Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }

    String call = "{CALL deleteTicketTuple(?)}";
    try {
      int transaction = Integer.parseInt(primaryKey[0].toString());
      return TableUtil.executeProcedure(connection, call, transaction);
    } catch (Exception e) {
      JOptionPane.showMessageDialog(null,
              "Error deleting tuple: " + e.getMessage(),
              "Database Error", JOptionPane.ERROR_MESSAGE);
      return false;
    }
  }
}