package view;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionListener;

/**
 * This is the login view class which creates the window to connect to the database using
 * a username and password.
 */
public class LoginView extends JFrame {

  private final JTextField usernameField = new JTextField(20);
  private final JPasswordField passwordField = new JPasswordField(20);
  private final JButton loginButton = new JButton("Login");

  /**
   * Constructing the login view.
   */
  public LoginView() {
    setTitle("Database Login");
    setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    setLayout(new GridLayout(3, 2, 5, 5));

    add(new JLabel("Username:"));
    add(usernameField);
    add(new JLabel("Password:"));
    add(passwordField);
    add(new JLabel()); // Empty cell for spacing
    add(loginButton);

    pack();
    setLocationRelativeTo(null);
  }

  /**
   * Get the given user's username.
   * @return the username
   */
  public String getUsername() {
    return usernameField.getText();
  }

  /**
   * Get the given user's password.
   * @return the password
   */
  public String getPassword() {
    return new String(passwordField.getPassword());
  }

  /**
   * add an action listener to the login button.
   * @param listener the action listener
   */
  public void addLoginListener(ActionListener listener) {
    loginButton.addActionListener(listener);
  }
}
