package view;

import javax.swing.*;

/**
 * This is the input field manager class which helps to update the fields shown in the panel
 * to correspond to the desired table when a user is trying to add a tuple to a table in the
 * team_sabrina database.
 */
public class InputFieldManager {

  /**
   * Method to update the text field boxes according to which table is selected. I think this will
   * be used for add.
   * @param tableName selected table
   * @param inputPanel the input panel
   */
  public static void updateFields(String tableName, JPanel inputPanel) {
    inputPanel.removeAll();
    switch (tableName) {
      case "album":
        addField(inputPanel, "Album Name:");
        addField(inputPanel, "Release Date (YYYY-MM-DD)");
        break;
      case "customer":
        addField(inputPanel, "First Name:");
        addField(inputPanel, "Last Name:");
        addField(inputPanel, "Phone:");
        addField(inputPanel, "Email:");
        break;
      case "location":
        addField(inputPanel, "City:");
        addField(inputPanel, "State/Region (can be null):");
        addField(inputPanel, "Country:");
        break;
      case "opening_act":
        addField(inputPanel, "Act Name:");
        break;
      case "opening_to_show":
        addField(inputPanel, "Tour Name:");
        addField(inputPanel, "Show Id:");
        addField(inputPanel, "Act Id:");
        addField(inputPanel, "Performance Order:");
        break;
      case "sabrina_show":
        addField(inputPanel, "Tour Name:");
        addField(inputPanel, "Show Id:");
        addField(inputPanel, "Venue Name:");
        addField(inputPanel, "Location ID:");
        addField(inputPanel, "Scheduled Date (YYYY-MM-DD):");
        addField(inputPanel, "Status (Upcoming/Cancelled/Completed):");
        break;
      case "song":
        addField(inputPanel, "Song Name:");
        addField(inputPanel, "Album ID:");
        addField(inputPanel, "Tour Name:");
        addField(inputPanel, "Order Played:");
        break;
      case "ticket_sales" :
        addField(inputPanel, "Purchase Date (YYYY-MM-DD):");
        addField(inputPanel, "Total Cost:");
        addField(inputPanel, "Ticket Quantity:");
        addField(inputPanel, "Customer ID:");
        addField(inputPanel, "Tour Name:");
        addField(inputPanel, "Show Id:");
        break;
      case "tour":
        addField(inputPanel, "Tour Name:");
        addField(inputPanel, "Start Date (YYYY-MM-DD):");
        addField(inputPanel, "End Date (YYYY-MM-DD) (optional):");
        addField(inputPanel, "Tour Status (Upcoming/Ongoing/Ended):");
        break;
      case "venue":
        addField(inputPanel, "Location ID:");
        addField(inputPanel, "Venue Name:");
        addField(inputPanel, "Capacity:");
        break;
      default:
        throw new IllegalArgumentException("Invalid table name: " + tableName);
    }

    inputPanel.revalidate();
    inputPanel.repaint();
  }

  /**
   * Helper method to add input text field to the panel
   * @param panel the panel to add to
   * @param labelText the text field
   */
  private static void addField(JPanel panel, String labelText) {
    panel.add(new JLabel(labelText));
    panel.add(new JTextField());
  }

  public static void updateDeleteFields(String tableName, JPanel inputPanel) {
    inputPanel.removeAll();
    switch (tableName) {
      case "album":
        addField(inputPanel, "Album ID to delete:");
        break;
      case "customer":
        addField(inputPanel, "Customer ID to delete:");
        break;
      default:
        throw new IllegalArgumentException("Invalid table name: " + tableName);
    }
    inputPanel.revalidate();
    inputPanel.repaint();
  }
}