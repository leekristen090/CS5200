package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * This is the database connection class which helps to connect java host language to MySQL server.
 */
public class DBConnect {

  private static final String url =
          "jdbc:mysql://localhost:3306/team_sabrina?useSSL=false&serverTimezone=UTC";

  /**
   * Making the connection to the database using a username and password.
   * @param username given username
   * @param password given password
   * @return the connection
   * @throws SQLException if the connection is not successful
   */
  public static Connection connect(String username, String password) throws SQLException {
    return DriverManager.getConnection(url, username, password);
  }
}
