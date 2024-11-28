package view;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionListener;

public class LoginView extends JFrame {

  private final JTextField usernameField = new JTextField(20);
  private final JPasswordField passwordField = new JPasswordField(20);
  private final JButton loginButton = new JButton("Login");

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

  // Getter methods for username and password
  public String getUsername() {
    return usernameField.getText();
  }

  public String getPassword() {
    return new String(passwordField.getPassword());
  }

  // Method to add ActionListener to the login button
  public void addLoginListener(ActionListener listener) {
    loginButton.addActionListener(listener);
  }
}
