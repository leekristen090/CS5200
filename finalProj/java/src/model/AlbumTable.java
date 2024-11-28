package model;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;

public class AlbumTable {

  public static JTable getAlbumTable(Connection connection) {
    JTable table = new JTable();
    try (Statement statement = connection.createStatement()) {
      String query = "SELECT * FROM album";
      ResultSet resultSet = statement.executeQuery(query);

      // Get column count
      int columnCount = resultSet.getMetaData().getColumnCount();
      String[] columnNames = new String[columnCount];
      for (int i = 0; i < columnCount; i++) {
        columnNames[i] = resultSet.getMetaData().getColumnName(i + 1);
      }

      // Create the table model
      DefaultTableModel model = new DefaultTableModel();
      model.setColumnIdentifiers(columnNames);

      // Add data to table
      while (resultSet.next()) {
        Object[] row = new Object[columnCount];
        for (int i = 0; i < columnCount; i++) {
          row[i] = resultSet.getObject(i + 1);
        }
        model.addRow(row);
      }

      table.setModel(model);

    } catch (SQLException e) {
      e.printStackTrace();
      JOptionPane.showMessageDialog(null, "Error loading album data: "
              + e.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
    }
    return table;
  }
}
