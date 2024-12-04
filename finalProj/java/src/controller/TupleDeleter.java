package controller;

import java.awt.*;
import java.sql.Connection;
import javax.swing.*;

import model.AlbumTable;
import model.CustomerTable;
import model.LocationTable;
import model.OpenToShowTable;
import model.OpeningActTable;
import model.SabrinaShowTable;
import model.SongTable;
import model.TableOps;
import model.TicketTable;
import model.TourTable;
import model.VenueTable;

/**
 * This is the tuple deleter class which facilitates the deleting a specified tuple from a
 * specified table in the team_sabrina database using user input from the input panel.
 */
public class TupleDeleter implements ITupleDelete {

  /**
   * Method to delete a tuple from a specified table using user inputs to specify which tuple.
   * @param tableName chosen table
   * @param inputPanel the panel with user input
   * @param connection db connection
   * @return true if tuple deleted successfully, false otherwise
   */
  @Override
  public boolean deleteTuple(String tableName, JPanel inputPanel, Connection connection) {
    Component[] components = inputPanel.getComponents();
    String[] primaryKeyValues = new String[components.length / 2];

    for (int i = 1; i < components.length; i += 2) {
      if (components[i] instanceof JTextField) {
        primaryKeyValues[i / 2] = ((JTextField) components[i]).getText();
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
        return tableOps.deleteDBTuple(connection, primaryKeyValues);
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    return false;
  }
}