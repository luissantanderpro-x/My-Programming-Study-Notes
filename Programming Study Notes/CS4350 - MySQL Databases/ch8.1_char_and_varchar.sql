# <SQL> | Ch8.1 - CHAR and VARCHAR Data Types 
# ---------------------------------------

# Storing Data 
# -------------
CHAR # has a fixed length length can be any level 0 - 255 characters long padded with
	 # white spaces. 

# CHAR is faster for fixed length text 
# Ex
# ----
# State Abbreviations: CA, NY
# Yes/No Flags: Y/N
# Sex: M/F 

# If you don't need abbreviations just use 
# Varchar willl truncate also anything over 4 characters long 
VARCHAR 


# CHAR will create "_____" - 5 Bytes Long
# VARCHAR will create "" - 1 Byte Long 


# Create New Table 
CREATE TABLE dogs (
	name CHAR(5),
	breed VARCHAR(10)
); 


INSERT INTO dogs (name, breed) VALUES ('bob', 'beagle'); 
INSERT INTO dogs (name, breed) VALUES ('robby', 'corgi'); 
INSERT INTO dogs (name, breed) VALUES ('Princess Jane', 'Retriever'); # Throw Error due to char limit
