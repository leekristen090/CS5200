
package model;

import javax.swing.JTable;
import java.sql.Connection;

public class CustomerTable {

  public static JTable getCustomerTable(Connection connection) {
    String query = "SELECT * FROM customer";
    return TableUtil.fetchTableData(connection, query);
  }
}
