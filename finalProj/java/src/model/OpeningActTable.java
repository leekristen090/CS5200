package model;

import javax.swing.JTable;
import java.sql.Connection;

public class OpeningActTable {

  public static JTable getOpeningActTable(Connection connection) {
    String query = "SELECT * FROM opening_act";
    return TableUtil.fetchTableData(connection, query);
  }

}