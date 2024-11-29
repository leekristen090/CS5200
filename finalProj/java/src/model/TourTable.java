package model;

import javax.swing.JTable;
import java.sql.Connection;

public class TourTable {

  public static JTable getTourTable(Connection connection) {
    String query = "SELECT * FROM tour";
    return TableUtil.fetchTableData(connection, query);
  }
}
