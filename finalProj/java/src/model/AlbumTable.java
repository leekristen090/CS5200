package model;

import javax.swing.JTable;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

public class AlbumTable {

  public static JTable getAlbumTable(Connection connection) {
    String query = "SELECT * FROM album";
    return TableUtil.fetchTableData(connection, query);
  }

  public static boolean addTupleWithProcedure(Connection connection, String albumName,
                                              String releaseDate) {
    String call = "{CALL addAlbumTuple(?, ?)}";
    try (CallableStatement callableStatement = connection.prepareCall(call)) {
      callableStatement.setString(1, albumName);
      callableStatement.setString(2, releaseDate);
      int rowsAffected = callableStatement.executeUpdate();
      return rowsAffected > 0;
    } catch (SQLException e) {
      e.printStackTrace();
      return false;
    }
  }

}
