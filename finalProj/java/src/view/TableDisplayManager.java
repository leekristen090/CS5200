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
    switch (tableName) {
      case "album":
        return AlbumTable.getAlbumTable(connection);
      case "customer":
        return CustomerTable.getCustomerTable(connection);
      case "location":
        return LocationTable.getLocationTable(connection);
      case "opening_act":
        return OpeningActTable.getOpeningActTable(connection);
      case "opening_to_show":
        return OpenToShowTable.getOpeningToShowTable(connection);
      case "sabrina_show":
        return SabrinaShowTable.getSabrinaShowTable(connection);
      case "song":
        return SongTable.getSongTable(connection);
      case "ticket_sales":
        return TicketTable.getTicketTable(connection);
      case "tour":
        return TourTable.getTourTable(connection);
      case "venue":
        return VenueTable.getVenueTable(connection);
      default:
        throw new IllegalArgumentException("Unknown table: " + tableName);
    }
  }
}