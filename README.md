# data-ingestion-pentahoPDI
This is a project to grab some data, cleaned it using Dataiku DSS then integrated it into a MySQL database using Pentaho PDI

Instructions:  
The important files are the H2AVisaDBV2 mysql file and the ETLs inside the folder.  

1) Forward Engineer the database using MySQL workbench, use DROP Objects and create DROP schema so we have a blank slate.  
2) Next we can generate the dataset by running the provided Dataiku DSS job, or use the prepared dataset in the Input folder
3) This script is set to use localhost:3306 (default MySQL address), if doing it remotely, make sure to change that in the connection string in the transformation files (kettle files)
4) Open de fole JOB_H2AVISAAPPS in the ETL Folder.
5) Double click on the "Set User and Password" step and input the root user and password created on the database.
6) Save the file and click Run  

Notes:  
I ran this in 2 different computers, took 15 minutes to run in an i5-4690k Desktop with 16 GB RAM and 35 minutes on an i5-6300U laptop with 8 GB of RAM.
