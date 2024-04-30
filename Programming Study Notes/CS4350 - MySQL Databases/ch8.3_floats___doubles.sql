


# But there's also Float and Double 

# Doubles store larger numbers less space but it comes at the cost of precision 

# Data Type             Memory Needed         Precision Needed 
# FLOAT					4 Bytes				  7 Digits 
# DOUBLE 				8 Bytes				  15 Digits 

 -- CREATE TABLE thingies(
 -- 	price FLOAT
 -- );


INSERT INTO thingies(price) VALUES (88.45);
INSERT INTO thingies(price) VALUES (8877.45);
INSERT INTO thingies(price) VALUES (8877665544.45);
 
SELECT * FROM thingies;