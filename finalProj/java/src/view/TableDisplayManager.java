package view;

import javax.swing.*;
import java.sql.Connection;
import model.*;

/**
 * This is the table display manager class which helps to display the tables in the
 * team_sabrina database.
 */
public class TableDisplayManager {

  /**
   * Method to retrieve the desired table and eventually display it in the GUI environment.
   * @param tableName table to retrieve
   * @param connection db connection
   * @return the desired table with its corresponding data
   */
  public static JTable getTable(String tableName, Connection connection) {
    TableOps tableOps;
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
      default:
        throw new IllegalArgumentException("Unknown table: " + tableName);
    }
    return tableOps.getDBTableData(connection);
  }
}