package model;

import javax.swing.JTable;
import java.sql.Connection;

public class AlbumTable {

  public static JTable getAlbumTable(Connection connection) {
    String query = "SELECT * FROM album";
    return TableUtil.fetchTableData(connection, query);
  }
}
