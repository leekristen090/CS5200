package controller;

import model.*;
import javax.swing.*;
import java.awt.*;
import java.sql.Connection;

/**
 * This is the tuple adder class which helps with adding tuples to a desired table in the
 * team_sabrina database.
 */
public class TupleAdder implements ITupleAdder {

  /**
   * Add a tuple to the selected db table with its corresponding fields in the input panel.
   * @param tableName selected table to add a tuple to
   * @param inputPanel the input panel
   * @param connection db connection
   * @return true if tuple added successfully, false otherwise
   */
  @Override
  public boolean addTuple(String tableName, JPanel inputPanel, Connection connection) {
    Component[] components = inputPanel.getComponents();
    String[] inputs = new String[components.length / 2];

    for (int i = 1; i < components.length; i += 2) {
      if (components[i] instanceof JTextField) {
        inputs[i / 2] = ((JTextField) components[i]).getText();
      }
    }

    try {
      TableOps tableOps = null;
      switch (tableName) {
        case "album":
          tableOps = new AlbumTable();
          break;
          //return AlbumTable.addTuple(connection, inputs[0], inputs[1]);
        case "customer":
          tableOps = new CustomerTable();
          break;
          //return CustomerTable.addCustomerTuple(connection, inputs[0], inputs[1], inputs[2], inputs[3]);
        case "location":
          //return LocationTable.addLocationTuple(connection, inputs[0], inputs[1], inputs[2]);
          tableOps = new LocationTable();
          break;
        case "opening_act":
          //return OpeningActTable.addOpeningActTuple(connection, inputs[0]);
          tableOps = new OpeningActTable();
          break;
        case "opening_to_show":
          //return OpenToShowTable.addOpenToShowTuple(connection,inputs[0], inputs[1], inputs[2], inputs[3]);
          tableOps = new OpenToShowTable();
          break;
        case "sabrina_show":
          //return SabrinaShowTable.addShowTuple(connection, inputs[0], inputs[1], inputs[2], inputs[3], inputs[4], inputs[5]);
          tableOps = new SabrinaShowTable();
          break;
        case "song":
          //return SongTable.addSongTuple(connection,inputs[0], inputs[1], inputs[2], inputs[3]);
          tableOps = new SongTable();
          break;
        case "ticket_sales":
          //return TicketTable.addTicketSaleTuple(connection,inputs[0],inputs[1],inputs[2],inputs[3], inputs[4],inputs[5]);
          tableOps = new TicketTable();
          break;
        case "tour":
          //return TourTable.addTourTuple(connection, inputs[0], inputs[1], inputs[2], inputs[3]);
          tableOps = new TourTable();
          break;
        case "venue":
          //return VenueTable.addVenueTuple(connection, inputs[0], inputs[1], inputs[2]);
          tableOps = new VenueTable();
          break;
      }
      if (tableOps != null) {
        return tableOps.addDBTuple(connection, inputs);
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    return false;
  }
}