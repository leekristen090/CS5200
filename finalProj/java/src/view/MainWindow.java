package view;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import model.AlbumTable;
import model.SongTable;
import model.TourTable;

/**
 * This is the main window class which creates the window seen after a successful connection the
 * MySQL database.
 */
public class MainWindow extends JFrame {

  private final JButton showTableButton;
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
    add(sidePanel, BorderLayout.WEST);

    // Create the table display panel (center)
    tablePanel = new JPanel();
    tablePanel.setLayout(new BorderLayout());
    add(tablePanel, BorderLayout.CENTER);

    // Set action listener for Show Table button
    showTableButton.addActionListener(new ActionListener() {
      @Override
      public void actionPerformed(ActionEvent e) {
        openTableSelectionDialog();
      }
    });

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
      case "tour":
        table = TourTable.getTourTable(connection);
        break;
      case "song":
        table = SongTable.getSongTable(connection);
    }

    if (table != null) {
      // Add new table to the center panel
      tablePanel.add(new JScrollPane(table), BorderLayout.CENTER);
      tablePanel.revalidate();
      tablePanel.repaint();
    }
  }
}
