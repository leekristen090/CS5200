package view;

import javax.swing.*;
import java.awt.*;
import java.sql.Connection;

import controller.*;

/**
 * This is the main window class which creates the window seen after a successful connection the
 * MySQL database.
 */
public class MainWindow extends JFrame {

  private final JButton showTableButton;
  private final JButton updateTableButton;
  private final JButton addTupleButton;
  private final JButton deleteTupleButton;
  private final JButton futureShowsButton;
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
    //sidePanel.setLayout(new BoxLayout(sidePanel, BoxLayout.Y_AXIS));  // Vertical layout
    sidePanel.setLayout(new GridLayout(0, 1, 10, 10));
    sidePanel.setBorder(BorderFactory.createTitledBorder("Operations"));
    showTableButton = new JButton("Show Table");
    sidePanel.add(showTableButton);
    updateTableButton = new JButton("Update Tuple");
    sidePanel.add(updateTableButton);
    addTupleButton = new JButton("Add Tuple");
    sidePanel.add(addTupleButton);
    deleteTupleButton = new JButton("Delete Tuple");
    sidePanel.add(deleteTupleButton);
    futureShowsButton = new JButton("Future Shows");
    sidePanel.add(futureShowsButton);
    add(sidePanel, BorderLayout.WEST);

    // Create the table display panel (center)
    tablePanel = new JPanel();
    tablePanel.setLayout(new BorderLayout());
    add(tablePanel, BorderLayout.CENTER);

    // Set action listener for Show Table button
    showTableButton.addActionListener(e -> openTableSelectionDialog());
    addTupleButton.addActionListener(e -> openAddTupleDialog());
    deleteTupleButton.addActionListener(e -> openDeleteTupleDialog());
    updateTableButton.addActionListener(e -> openUpdateDialog());

    // Set window properties
    setSize(800, 600);
    setLocationRelativeTo(null);
    setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
  }

  /**
   * Helper method to open a window to select the table to display.
   */
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

  /**
   * Helper method to display the selected table's data in the main window.
   * @param tableName the selected table to view
   */
  private void displayTable(String tableName) {
    tablePanel.removeAll(); // Clear previous table
    JTable table = TableDisplayManager.getTable(tableName, connection); // Fetch table from manager

    if (table != null) {
      tablePanel.add(new JScrollPane(table), BorderLayout.CENTER);
      tablePanel.revalidate();
      tablePanel.repaint();
    }
  }

  /**
   * Helper method to open popup window with option for adding a tuple to a desired table.
   */
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
    tableSelector.addActionListener(e ->
            InputFieldManager.updateFields((String) tableSelector.getSelectedItem(), inputPanel));

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
        // Create an instance of TupleAdder and call addTuple on it
        TupleAdder tupleAdder = new TupleAdder();
        boolean success = tupleAdder.addTuple(selectedTable, inputPanel, connection);
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
    //updateInputFields((String) tableSelector.getSelectedItem(), inputPanel);
    InputFieldManager.updateFields((String) tableSelector.getSelectedItem(), inputPanel);

    addDialog.setSize(500, 400);
    addDialog.setLocationRelativeTo(this);
    addDialog.setVisible(true);
  }

  /**
   * Helper method to open popup window for ability to delete tuple from specified table.
   */
  private void openDeleteTupleDialog() {
    JDialog deleteDialog = new JDialog(this, "Delete Tuple", true);
    deleteDialog.setLayout(new BorderLayout());
    String[] tables = {"album","customer","location","opening_act","opening_to_show",
            "sabrina_show", "song", "ticket_sales","tour","venue"};
    JComboBox<String> tableSelector = new JComboBox<>(tables);
    JPanel inputPanel = new JPanel();
    inputPanel.setLayout(new GridLayout(0, 2, 10, 10));

    tableSelector.addActionListener(e ->
            InputFieldManager.updateDeleteFields((String) tableSelector.getSelectedItem(),
                    inputPanel));

    JPanel buttonPanel = new JPanel();
    JButton submitButton = new JButton("Submit");
    JButton cancelButton = new JButton("Cancel");
    buttonPanel.add(submitButton);
    buttonPanel.add(cancelButton);

    // add submit button action listener
    submitButton.addActionListener(e -> {
      String selectedTable = (String) tableSelector.getSelectedItem();
      if (selectedTable != null) {
        // Create an instance of TupleAdder and call addTuple on it
        TupleDeleter tupleDelete = new TupleDeleter();
        boolean success = tupleDelete.deleteTuple(selectedTable, inputPanel, connection);
        if (success) {
          JOptionPane.showMessageDialog(this, "Tuple has been deleted!");
          deleteDialog.dispose();
          displayTable(selectedTable); // show updated table
        } else {
          JOptionPane.showMessageDialog(this, "Failed to delete tuple.",
                  "Error", JOptionPane.ERROR_MESSAGE);
        }
      }
    });
    cancelButton.addActionListener(e -> deleteDialog.dispose());

    deleteDialog.add(tableSelector, BorderLayout.NORTH);
    deleteDialog.add(new JScrollPane(inputPanel), BorderLayout.CENTER);
    deleteDialog.add(buttonPanel, BorderLayout.SOUTH);

    // Initialize with first table's fields
    InputFieldManager.updateDeleteFields((String) tableSelector.getSelectedItem(), inputPanel);
    deleteDialog.setSize(500, 400);
    deleteDialog.setLocationRelativeTo(this);
    deleteDialog.setVisible(true);
  }

  /**
   * Helper method to open popup window for ability to update a tuple from specified table.
   */
  private void openUpdateDialog() {
    JDialog updateDialog = new JDialog(this, "Update Tuple", true);
    updateDialog.setLayout(new BorderLayout());
    String[] tables = {"album","customer","location","opening_act","opening_to_show",
            "sabrina_show", "song", "ticket_sales","tour","venue"};
    JComboBox<String> tableSelector = new JComboBox<>(tables);
    JPanel inputPanel = new JPanel();
    inputPanel.setLayout(new GridLayout(0, 2, 10, 10));

    tableSelector.addActionListener(e ->
            InputFieldManager.updateUpdateFields((String) tableSelector.getSelectedItem(),
                    inputPanel));

    JPanel buttonPanel = new JPanel();
    JButton submitButton = new JButton("Submit");
    JButton cancelButton = new JButton("Cancel");
    buttonPanel.add(submitButton);
    buttonPanel.add(cancelButton);

    submitButton.addActionListener(e -> {
      String selectedTable = (String) tableSelector.getSelectedItem();
      if (selectedTable != null) {
        // Create an instance of TupleAdder and call addTuple on it
        TupleUpdater tUpdater = new TupleUpdater();
        boolean success = tUpdater.updateTuple(selectedTable, inputPanel, connection);
        if (success) {
          JOptionPane.showMessageDialog(this, "Tuple has been updated!");
          updateDialog.dispose();
          displayTable(selectedTable); // show updated table
        } else {
          JOptionPane.showMessageDialog(this, "Failed to update tuple.",
                  "Error", JOptionPane.ERROR_MESSAGE);
        }
      }
    });
    cancelButton.addActionListener(e -> updateDialog.dispose());

    updateDialog.add(tableSelector, BorderLayout.NORTH);
    updateDialog.add(new JScrollPane(inputPanel), BorderLayout.CENTER);
    updateDialog.add(buttonPanel, BorderLayout.SOUTH);

    InputFieldManager.updateUpdateFields((String) tableSelector.getSelectedItem(), inputPanel);
    updateDialog.setSize(500, 400);
    updateDialog.setLocationRelativeTo(this);
    updateDialog.setVisible(true);
  }


}