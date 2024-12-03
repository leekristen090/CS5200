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
        //return LocationTable.getLocationTable(connection);
        tableOps = new LocationTable();
        break;
      case "opening_act":
        //return OpeningActTable.getOpeningActTable(connection);
        tableOps = new OpeningActTable();
        break;
      case "opening_to_show":
        //return OpenToShowTable.getOpeningToShowTable(connection);
        tableOps = new OpenToShowTable();
        break;
      case "sabrina_show":
        //return SabrinaShowTable.getSabrinaShowTable(connection);
        tableOps = new SabrinaShowTable();
        break;
      case "song":
        //return SongTable.getSongTable(connection);
        tableOps = new SongTable();
        break;
      case "ticket_sales":
        //return TicketTable.getTicketTable(connection);
        tableOps = new TicketTable();
        break;
      case "tour":
        //return TourTable.getTourTable(connection);
        tableOps = new TourTable();
        break;
      case "venue":
        //return VenueTable.getVenueTable(connection);
        tableOps = new VenueTable();
        break;
      default:
        throw new IllegalArgumentException("Unknown table: " + tableName);
    }
    return tableOps.getDBTableData(connection);
  }
}