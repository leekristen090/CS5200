# CS5200 Final Project Deliverable README
Provide a README section for creating and running the project. We need complete specifications 
for building your project on our computer. Specify all libraries, software, etc. needed to run 
the application. Specify expected installation directories. If you use a specific technology for 
the project, the technology’s download page must be listed.

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

# Delete all below this line before submission
## DB Application 
You must have connectivity from your front end to your database in order to receive any points 
for this task. The host languages supported are the latest versions are Java, Python, 
javascript and R. Approval of any other language must be given in feedback from the 
project proposal.

Please be sure to include all  developed client code, i.e. all CRUD 
operations (create, read, update, delete). 

**The application, at a minimum needs to allow a user to:**

- [x] Create new tuples in the database
  * More points allotted for different types of entities created                                      
- [x] Read data from the database 
  * More points allotted for different tables read                                                                                  
- [x] Update tuples in the database
  * More points allotted for more tables providing the update operation                                       
- [x] Delete data tuples from the database
  * More points allotted for different tables supported for the delete operations  

**The project will be evaluated by the following criteria:**

* Functionality provided by the project is a complete solution for the chosen data domain and 
the chosen use of the application
* Modularization of code, such as use of functions in the front end code as well as use of SQL 
user defined procedures, functions, triggers, and events          
* Error handling system (testing of arguments, user input, ability to gracefully handle errors 
from the DBMS using techniques such as catch/try mechanism)              
* Submitted project is complete -> No missing files
* Easy to use front end application
  * Prompts are easy to interpret, good feedback on input

## Final report requirements **(to be deleted before submission)**
Please use your project proposal report as a starting point to create your project’s final report. 
Provide a single document that contains the following sections:
- [ ] README 
  * Provide a README section for creating and running the project. We need complete specifications 
    for building your project on our computer. Specify all libraries, software, etc. needed to run
    the application. Specify expected installation directories. If you use a specific
    technology for the project, the technology’s download page must be listed.
- [ ] Provide the Technical Specifications for the project 
  * This entails the software used to build the project such as the host language and 
  any other frameworks used
- [ ] Provide the current conceptual design as a UML diagram for the project
- [ ] Provide a logical design for the submitted database schema 
  * (Feel free to Reverse Engineer your final schema in the MySQL workbench)
- [ ] Provide the final user flow of the system
  * List the commands or methods the user performs to interact with the application
- [ ] Provide a “Lessons Learned” section that contains report sections for the following:
  * Technical expertise gained
  * Insights, time management insights, data domain insights etc.
  * Realized or contemplated alternative design / approaches to the project
  * Document any code not working in this section
- [ ] Provide a “Future work” section containing:
  * Planned uses of the database
  * Potential areas for added functionality
  * No future uses or work can be documented if justification is provided

The final report file should be named canvas_group_name_final_report.pdf, where canvas_group_name
is your group name in canvas. Remember, this is a writing exercise. Please take the 
time to write a cohesive report on your semester’s project.