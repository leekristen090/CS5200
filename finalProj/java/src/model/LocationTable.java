package model;

import java.sql.Connection;

import javax.swing.JTable;

public class LocationTable {
  public static JTable getLocationTable(Connection connection) {
    String query = "SELECT * FROM location";
    return TableUtil.fetchTableData(connection, query);
  }
}