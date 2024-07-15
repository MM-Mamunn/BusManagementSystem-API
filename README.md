Bus Management Project - API & Database
This project includes a PostgreSQL database, Django API.
Cloning and Setting Up the Project
1. Clone the Repository
Clone this repository to your local machine:
```
git clone <repository_url>
cd Database-React_with_API_projectv2.0
```
2. Set Up the Database
Open pgAdmin on your computer.
Create a new database (e.g., xyz).
Right-click on the new database and select Restore.
Set the Format to Directory.
Choose the Database_restore.sql file and click Restore.
3. Configure the API
Navigate to Database-React_with_API_projectv2.0\API(Database_part)\IIUC_BUS_MANAGEMENT\api\utils.
Open the database.py file.
Rename DB_NAME from "IIUC_Bus_management" to your database name ("xyz").
4. Set Up the Virtual Environment
Open a terminal in the cloned directory (Database-React_with_API_projectv2.0).
Create a virtual environment:
```
pip install virtualenv
virtualenv env
```
2.
Activate the virtual environment:
On Windows:
```
env\Scripts\activate
```
Or
```
env\Scripts\activate.bat
```

5. Install Necessary Dependencies
Install Django Rest Framework:
```
pip install djangorestframework
```
Install psycopg2-binary:
```
pip install psycopg2-binary
```
Install corsheaders:
```
pip install django-cors-headers
```


6. Run the Project
Navigate to the directory where manage.py is located.
Run the following command to start the server:
```
py manage.py runserver
```

The database API is now hosted on the local host, and the React part can access it.

