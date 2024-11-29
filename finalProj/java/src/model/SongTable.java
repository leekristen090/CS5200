package model;

import javax.swing.JTable;
import java.sql.Connection;

public class SongTable {

  public static JTable getSongTable(Connection connection) {
    String query = "SELECT * FROM song";
    return TableUtil.fetchTableData(connection, query);
  }

}