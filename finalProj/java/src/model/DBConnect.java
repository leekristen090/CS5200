package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

  private static final String url = "jdbc:mysql://localhost:3306/team_sabrina?useSSL=false&serverTimezone=UTC";

  public static Connection connect(String username, String password) throws SQLException {
    return DriverManager.getConnection(url, username, password);
  }
}
