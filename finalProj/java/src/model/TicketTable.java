package model;

import javax.swing.JTable;
import java.sql.Connection;

public class TicketTable {
  public static JTable getTicketTable(Connection connection) {
    String query = "SELECT * FROM ticket_sales";
    return TableUtil.fetchTableData(connection, query);
  }
}