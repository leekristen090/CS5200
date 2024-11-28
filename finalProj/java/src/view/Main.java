package view;

import controller.LoginController;

public class Main {
  public static void main(String[] args) {
    LoginView view = new LoginView();
    new LoginController(view);
    view.setVisible(true);
  }
}

