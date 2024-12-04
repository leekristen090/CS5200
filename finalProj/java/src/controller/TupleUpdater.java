package controller;

import java.awt.*;
import java.sql.Connection;
import javax.swing.*;
import model.*;

/**
 * This is the tuple updater class which facilitates the updating of tuples in a specified table
 * in the team_sabrina database.
 */
public class TupleUpdater implements ITupleUpdate {

  /**
   * Update a tuple in the selected db table with the corresponding user input from the
   * input panel.
   *
   * @param tableName  selected table
   * @param inputPanel user input panel
   * @param connection db connection
   * @return true if tuple updated successfully, false otherwise
   */
  @Override
  public boolean updateTuple(String tableName, JPanel inputPanel, Connection connection) {
    Component[] components = inputPanel.getComponents();
    String[] userInput = new String[components.length / 2];

    for (int i = 1; i < components.length; i += 2) {
      if (components[i] instanceof JTextField) {
        userInput[i / 2] = ((JTextField) components[i]).getText();
      }
    }

    try {
      TableOps tableOps = null;
      switch (tableName) {
        case "album":
          tableOps = new AlbumTable();
          break;
        case "customer":
          tableOps = new CustomerTable();
          break;
        case "location":
          tableOps = new LocationTable();
          break;
        case "opening_act":
          tableOps = new OpeningActTable();
          break;
        case "opening_to_show":
          tableOps = new OpenToShowTable();
          break;
        case "sabrina_show":
          tableOps = new SabrinaShowTable();
          break;
        case "song":
          tableOps = new SongTable();
          break;
        case "ticket_sales":
          tableOps = new TicketTable();
          break;
        case "tour":
          tableOps = new TourTable();
          break;
        case "venue":
          tableOps = new VenueTable();
          break;
      }
      if (tableOps != null) {
        return tableOps.updateDBTuple(connection, userInput);
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    return false;
  }
}