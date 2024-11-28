package controller;

import model.DBConnect;
import view.LoginView;
import view.MainWindow;
import java.sql.Connection;
import java.sql.SQLException;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JOptionPane;

/**
 * This is the login controller class which helps us to login into the database from the gui.
 */
public class LoginController {

  private final LoginView view;

  /**
   * Constructor for the login.
   * @param view the view
   */
  public LoginController(LoginView view) {
    this.view = view;

    // Set up the listener for the login button
    this.view.addLoginListener(new ActionListener() {
      @Override
      public void actionPerformed(ActionEvent e) {
        login();
      }
    });
  }

  private void login() {
    String username = view.getUsername();
    String password = view.getPassword();

    try {
      // Attempt to connect using the provided username and password
      Connection connection = DBConnect.connect(username, password);
      JOptionPane.showMessageDialog(view, "Connection Successful!", "Success",
              JOptionPane.INFORMATION_MESSAGE);

      // Open the Main Window
      MainWindow mainWindow = new MainWindow(connection);
      mainWindow.setVisible(true);

      // Optionally, close the login window
      view.dispose();

    } catch (SQLException e) {
      JOptionPane.showMessageDialog(view, "Connection Failed: " + e.getMessage(),
              "Error", JOptionPane.ERROR_MESSAGE);
    }
  }
}
