package view;

import controller.LoginController;

/**
 * This is the main class which helps to run the gui application.
 */
public class Main {
  public static void main(String[] args) {
    LoginView view = new LoginView();
    new LoginController(view);
    view.setVisible(true);
  }
}

