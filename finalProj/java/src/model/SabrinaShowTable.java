package model;

import javax.swing.JTable;
import java.sql.Connection;

public class SabrinaShowTable {

  public static JTable getSabrinaShowTable(Connection connection) {
    String query = "SELECT * FROM sabrina_show";
    return TableUtil.fetchTableData(connection, query);
  }
}