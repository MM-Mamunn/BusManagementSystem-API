Clone this repository to your computer.
Open pgAdmin on your computer.
Create a new database (e.g “xyz”)
Click the right button on the database and select restore.
Select the Format as “Directory”
Chose the “Database_restore.sql” file and click restore.
(The database is restored in your  pgAdmin)

Now goto 
“Database-React_with_API_projectv2.0\API(Database_part)\IIUC_BUS_MANAGEMENT\api\utils”
(in API(Database_part), in IIUC_BUS_MANAGEMENT, in api, in utils folder.)
Open database.py file.
Rename DB_NAME from :IIUC_Bus_management” to your database name (“xyz”)


Close everything
Goto the file you have cloned (Database-React_with_API_projectv2.0).
Open terminal in this directory.

Create Virtual Environment:
Step 1 : “pip install virtualenv”
Press enter.
Step 2: “virtualenv env”
Press enter.
Virtual environment named “env” is created.
Step 2 : “env\Scripts\activate”
Or 
“env\Scripts\activate.bat”
Press enter.
Virtual environment is activated.(don’t close this terminal yet)

Now install some necessary files:
Step 1 : install django rest framework.
In the terminal paste  “pip install djangorestframework”


Press enter 
Step 2 : 
“pip install psycopg2-binary”
Press enter.

We are set to run the project.
Goto to the directory where “manage.py” is located and run the command
“py manage.py runserver”  .
The database api is hosted in the local host now, and the react part can access this .
