package model;

import javax.swing.JTable;
import java.sql.Connection;

public class VenueTable {
  public static JTable getVenueTable(Connection connection) {
    String sql = "SELECT * FROM venue";
    return TableUtil.fetchTableData(connection, sql);
  }
}