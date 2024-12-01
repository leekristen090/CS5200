package view;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JButton;
import javax.swing.BoxLayout;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JTextField;
import javax.swing.JLabel;
import java.awt.*;
import java.sql.Connection;
import model.AlbumTable;
import model.CustomerTable;
import model.LocationTable;
import model.OpenToShowTable;
import model.OpeningActTable;
import model.SabrinaShowTable;
import model.SongTable;
import model.TicketTable;
import model.TourTable;
import model.VenueTable;

/**
 * This is the main window class which creates the window seen after a successful connection the
 * MySQL database.
 */
public class MainWindow extends JFrame {

  private final JButton showTableButton;
  private final JButton updateTableButton;
  private final JButton addTupleButton;
  private final JPanel tablePanel;
  private final Connection connection;

  /**
   * Constructing the main window.
   * @param connection our connection to the db
   */
  public MainWindow(Connection connection) {
    this.connection = connection;

    setTitle("Main Window");
    setLayout(new BorderLayout());

    // Create side panel with the "Show Table" button
    JPanel sidePanel = new JPanel();
    sidePanel.setLayout(new BoxLayout(sidePanel, BoxLayout.Y_AXIS));  // Vertical layout
    showTableButton = new JButton("Show Table");
    sidePanel.add(showTableButton);
    updateTableButton = new JButton("Update Table");
    sidePanel.add(updateTableButton);
    addTupleButton = new JButton("Add Tuple");
    sidePanel.add(addTupleButton);
    add(sidePanel, BorderLayout.WEST);

    // Create the table display panel (center)
    tablePanel = new JPanel();
    tablePanel.setLayout(new BorderLayout());
    add(tablePanel, BorderLayout.CENTER);

    // Set action listener for Show Table button
    showTableButton.addActionListener(e -> openTableSelectionDialog());
    addTupleButton.addActionListener(e -> openAddTupleDialog());

    // Set window properties
    setSize(800, 600);
    setLocationRelativeTo(null);
    setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
  }

  // Open a dialog to select the table to display
  private void openTableSelectionDialog() {
    String[] options = {"album", "customer","location","opening_act","opening_to_show",
            "sabrina_show", "song", "ticket_sales","tour","venue"};
    String selectedTable = (String) JOptionPane.showInputDialog(
            this,
            "Select a table to view:",
            "Select Table",
            JOptionPane.PLAIN_MESSAGE,
            null,
            options,
            options[0]
    );

    if (selectedTable != null) {
      displayTable(selectedTable);
    }
  }

  // Display the selected table's data in the main window
  private void displayTable(String tableName) {
    tablePanel.removeAll(); // Clear previous table

    JTable table = null;
    switch (tableName) {
      case "album":
        table = AlbumTable.getAlbumTable(connection);
        break;
      case "customer":
        table = CustomerTable.getCustomerTable(connection);
        break;
      case "location":
        table = LocationTable.getLocationTable(connection);
        break;
      case "opening_act":
        table = OpeningActTable.getOpeningActTable(connection);
        break;
      case "opening_to_show":
        table = OpenToShowTable.getOpeningToShowTable(connection);
        break;
      case "sabrina_show":
        table = SabrinaShowTable.getSabrinaShowTable(connection);
        break;
      case "song":
        table = SongTable.getSongTable(connection);
        break;
      case "ticket_sales":
        table = TicketTable.getTicketTable(connection);
        break;
      case "tour":
        table = TourTable.getTourTable(connection);
        break;
      case "venue":
        table = VenueTable.getVenueTable(connection);
        break;
    }

    if (table != null) {
      // Add new table to the center panel
      tablePanel.add(new JScrollPane(table), BorderLayout.CENTER);
      tablePanel.revalidate();
      tablePanel.repaint();
    }
  }

  private void openAddTupleDialog() {
    JDialog addDialog = new JDialog(this, "Add Tuple", true);
    addDialog.setLayout(new BorderLayout());

    // Dropdown for table selection
    String[] tables = {"album", "customer","location","opening_act","opening_to_show",
            "sabrina_show", "song", "ticket_sales","tour","venue"};
    JComboBox<String> tableSelector = new JComboBox<>(tables);

    // Panel for dynamic input fields
    JPanel inputPanel = new JPanel();
    inputPanel.setLayout(new GridLayout(0, 2, 10, 10)); // Dynamic rows

    // Update input fields when table selection changes
    tableSelector.addActionListener(
            e -> updateInputFields((String) tableSelector.getSelectedItem(), inputPanel));

    // Buttons
    JPanel buttonPanel = new JPanel();
    JButton submitButton = new JButton("Submit");
    JButton cancelButton = new JButton("Cancel");

    buttonPanel.add(submitButton);
    buttonPanel.add(cancelButton);

    // Submit button action
    submitButton.addActionListener(e -> {
      String selectedTable = (String) tableSelector.getSelectedItem();
      if (selectedTable != null) {
        boolean success = handleAddTuple(selectedTable, inputPanel);
        if (success) {
          JOptionPane.showMessageDialog(this, "Tuple added successfully!");
          addDialog.dispose();
          displayTable(selectedTable); // show updated table
        } else {
          JOptionPane.showMessageDialog(this, "Failed to add tuple.",
                  "Error", JOptionPane.ERROR_MESSAGE);
        }
      }
    });

    cancelButton.addActionListener(e -> addDialog.dispose());

    // Dialog layout
    addDialog.add(tableSelector, BorderLayout.NORTH);
    addDialog.add(new JScrollPane(inputPanel), BorderLayout.CENTER);
    addDialog.add(buttonPanel, BorderLayout.SOUTH);

    // Initialize with first table's fields
    updateInputFields((String) tableSelector.getSelectedItem(), inputPanel);

    addDialog.setSize(500, 400);
    addDialog.setLocationRelativeTo(this);
    addDialog.setVisible(true);
  }

  private void updateInputFields(String tableName, JPanel inputPanel) {
    inputPanel.removeAll();

    // Define fields for each table
    switch (tableName) {
      case "album":
        inputPanel.add(new JLabel("Album Name:"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("Release Date (YYYY-MM-DD):"));
        inputPanel.add(new JTextField());
        break;
      case "customer":
        inputPanel.add(new JLabel("First Name:"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("Last Name:"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("Phone:"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("Email:"));
        inputPanel.add(new JTextField());
        break;
      case "location":
        inputPanel.add(new JLabel("City:"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("State/Region:"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("Country:"));
        inputPanel.add(new JTextField());
        break;
      case "opening_act":
        inputPanel.add(new JLabel("Act Name:"));
        inputPanel.add(new JTextField());
        break;
      case "opening_to_show":
        inputPanel.add(new JLabel("Tour Name:"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("Show Id:"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("Act Id:"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("Performance Order:"));
        inputPanel.add(new JTextField());
        break;
      case "sabrina_show":
        inputPanel.add(new JLabel("Tour Name:"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("Show Id:"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("Venue Name:"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("Location Id:"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("Scheduled Date (YYYY-MM-DD):"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("Show Status (Upcoming/Cancelled/Completed):"));
        break;
      case "song":
        inputPanel.add(new JLabel("Song Name:"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("Album ID:"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("Tour Name:"));
        inputPanel.add(new JTextField());
        inputPanel.add(new JLabel("Order Played:"));
        inputPanel.add(new JTextField());
        break;
      default:

    }

    inputPanel.revalidate();
    inputPanel.repaint();
  }

  private boolean handleAddTuple(String tableName, JPanel inputPanel) {
    Component[] components = inputPanel.getComponents();
    String[] inputs = new String[components.length / 2];
    JTable table = null;

    // Collect user inputs
    for (int i = 1; i < components.length; i += 2) {
      if (components[i] instanceof JTextField) {
        inputs[i / 2] = ((JTextField) components[i]).getText();
      }
    }

    // Call the stored procedure for the selected table
    try {
      switch (tableName) {
        case "album":
          return AlbumTable.addTupleWithProcedure(connection, inputs[0], inputs[1]);
        case "customer":
          return CustomerTable.addCustomerTuple(connection, inputs[0], inputs[1], inputs[2],
                  inputs[3]);
        // Add cases for other tables
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    return false;
  }



}
