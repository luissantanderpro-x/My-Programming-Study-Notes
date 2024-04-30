# <SQL> | Structured Query Language Reference Matrix 

# Creating a Database 
# --------------------------------
CREATE DATABASE <name>; 

# Dropping a Database 
# --------------------------------
DROP DATABASE <name_of_database>; 

# Using a Databases  
# --------------------------------
USE <database name>; 
SELECT database(); # show current selected database 

# Creating your own tables  
# ---------------------------------
CREATE TABLE tablename (
	column_name data_type,
	column_name data_type 
);


# Show Tables and Columns 
# ---------------------------------
SHOW TABLES; 

# Columns 
SHOW COLUMNS FROM cats; 

DESC cats; 

# Dropping Tables 
# ---------------------------------
DROP TABLE cats; 

# Inserting Data into Table 
# ---------------------------------
INSERT INTO cats(column_name) VALUES (data); 

# View data from the Database Table 
# ---------------------------------
SELECT * FROM table_name; 

# Show Database warnings 
# ---------------------------------
SHOW WARNINGS;

