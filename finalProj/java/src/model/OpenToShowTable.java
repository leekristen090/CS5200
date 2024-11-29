package model;

import javax.swing.JTable;
import java.sql.Connection;

public class OpenToShowTable {
  public static JTable getOpeningToShowTable(Connection connection) {
    String query = "SELECT * FROM opening_to_show";
    return TableUtil.fetchTableData(connection, query);
  }
}