# CS5200 Final Project Deliverable README
This document holds information and instructions for setting up and running this project.

## Software used for creating and running this project:
### MySQL community server (Latest Version) and MySQL Workbench (Latest Version)
**Server Link:** https://dev.mysql.com/downloads/mysql/

**Workbench Link:** https://dev.mysql.com/downloads/workbench/

**Canvas Link:** https://northeastern.instructure.com/courses/192325/pages/do-install-mysql-relational-database?module_item_id=10552701

**Workbench Installation Directory:** Typically installed under /usr/local/mysql

Above you will find links to the MySQL Community Download page for MySQL community server 
(Latest Version) and MySQL Workbench (Latest Version). There is also a link to the course canvas 
page which has instructions on how to download and set up the environment based on your OS.

Create a new database and import the team_sabrina schema.

### Java SE Development Kit, version 11
**Link:** https://www.oracle.com/java/technologies/downloads/#java11?er=221886

Ensure that you choose the file that matches your OS. Download and navigate to where your computer 
places internet downloads. Double click and install.

### Connector/J
**Link:** https://dev.mysql.com/downloads/

Follow the link above to the download page.
Choose the platform independent version and navigate to where your computer places internet
downloads. Double click and install. I found my download in finder under the downloads section.

**Installation Directory:** Include the .jar file in the project dependencies or classpath.

### IntelliJ IDEA (Latest Version)
**Community Version Link:** https://www.jetbrains.com/idea/

**Academic Licence Link:** https://www.jetbrains.com/community/education/#students

The community version can be downloaded for free, but there is also the option to licence the 
ultimate edition as students and teachers. Make sure you download the 
correct version for you OS. Navigate to where your computer places internet
downloads and double click. I found my download in finder under the downloads section.

**Installation Directory:** /Library/Java/JavaVirtualMachines/jdk<version>.jdk/Contents/Home

Create a new project to run this database application. Move the provided code into the project 
structure where you created this new project.To run, navigate to the file called 'Main.java' and
double click to open file. There are two ways to run, you can right-click the tab for Main.java and 
click 'Run Main.main()' to run the gui. Going forward, you can navigate to the top right corner of 
IntelliJ where you will see a play button. You can use that to run the program without doing the 
right-click every time after the initial right-click. 
You can also have Main.java be the file you are viewing, and navigate to the play button 
mentioned above. If you haven't right-clicked the Main.java tab, then you will see the prompt 
'Run current file'.

## Libraries
This project uses the following libraries and frameworks:

* MySQL Connector/J: JDBC Driver to connect to MySQL 
* Java Swing: GUI framework used for the application's user interface

## How to run
This program can be run on IntelliJ IDEA as stated in the previous section. It can also be run 
through the provided .jar file, this can be found in the res folder. To run the .jar file there 
are two ways to use it. The first, you can simply double-click the file and that will begin
the program. You can also use a terminal. To do so open a terminal window and in the project 
structure navigate to the folder that houses the .jar file. In my project it is in the res folder.
Once you are in the folder type the following command into the terminal line:

java -jar NameOfJARFile.jar

In this case 'NameOfJARFile.jar' is 'sabrina.jar'. After typing that line press 
ENTER(or RETURN depending on your computer). The application should then begin.

Once the GUI has opened, the user will be prompted with a login window. This is where they will 
validate their credentials. For our purposes, their credentials are those for MySQL Workbench. The 
user can type their username and password and once completed click 'login'. If their credentials do 
not match, a window with an error message will pop up. Once the user has successfully logged in, the 
main window will come into view. The user will see five buttons on the side and a blank area which
will hold table visualizations. Those five buttons include, show table, update tuple, add tuple, 
delete tuple, and future shows. 
If the user clicks the show table button, they will be prompted 
with a pop-up window that contains a dropdown menu of the available tables to view. Once they have 
selected a table to view they can press ok and the blank area will be populated with the selected
table. 
If the user clicks the update tuple button, they will be prompted with a pop-up window that 
has a dropdown menu of the available tables that can have a tuple updated. There will also be text 
boxes that correspond to the table selected for the user to type updated information for the table 
attributes. Once they are satisfied with the information, they can click ok and, if successful,
the updated table will be shown in the table environment.
If the user clicks add tuple, the pop-up window will be similar to that of the update 
tuple button. They will see the dropdown menu for the tables and text boxes for typing the 
information for the tuple they wish to add. Once they are satisfied with the information, they 
can click ok and, if successful, the table will be shown in the table environment with the newly
added tuple.
If the delete button is clicked, again the user will 
be prompted with a pop-up window with a dropdown menu of tables and text boxes. These text boxes 
will show the primary and composite primary key fields for the corresponding table which is needed 
for deletion. Once they are satisfied with the information, they can click ok and, if successful, 
the table will be shown in the table environment with their chosen tuple deleted.
If the future shows button is clicked, the user will see a table that contains all of 
Sabrina's upcoming shows as well as the tour name, venue and location information, and 
seat availability. All user actions and inputs have appropriate error handling as well as allowing 
SQL errors such as integrity constraints.
