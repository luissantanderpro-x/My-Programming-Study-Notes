# <SQL> | Chapter 8 - Dates, Times, and Timestamps Challenge 
# ------------------------------------------------------------

# What is a good use case for CHAR 
# for pair values such as M/F or T/F to pairs such as Males or Females


# What Data type should it be fill in the blanks 
-- CREATE TABLE inventory(
-- 	item_name ____________,
-- 	price ________________,
-- 	quantity ______________

-- );

# Price is always < 1,000,000

# Solution:
CREATE TABLE inventory(
	item_name VARCHAR(100),
	price DECIMAL(8, 2),
	quantity INT
);

DESC inventory; 


-- What's the difference between DATETIME and TIMESTAMP?
-- ------
-- Solution:
-- DATETIME - if storing years before 1970 you use DATETIME
-- TIMESTAMP - if storing meta data when table gets updated.

-- They both store datetime information, but there's a difference in the range, 
-- TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
-- TIMESTAMP is used for things like meta-data about when something is created
-- or updated.


# Print out the current time 
SELECT TIME(NOW()) as 'Current Time'; 


# Print out the current Date(but not time)
SElECT DATE(NOW()) as 'Current Date'; 

# Print out the current Day of the week 
SELECT DAYOFWEEK(NOW()) as 'Day of the week';

# Print out the current day of the week 
SELECT DAYNAME(NOW()); 

# Print out the current day and time using this format 
SELECT DATE_FORMAT(NOW(), '%m/%d/%Y') as 'Date Formatted'; 

# Print out the current day and time using this format 
# Ex: January 2nd at 3:15 

SELECT DATE_FORMAT(NOW(), '%M %D at %k:%i') as 'Formatted Time'; 

# Creates a tweets table that stores:
CREATE TABLE tweets_table(
	tweet_id INT NOT NULL AUTO_INCREMENT,
	user_name VARCHAR(50),
	tweet_content VARCHAR(140),
	created_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(tweet_id)
);

DESC tweets_table; 

INSERT INTO tweets_table(user_name, tweet_content)
VALUES('goosema_92', 'I gotcha pickachu....'); 

INSERT INTO tweets_table(user_name, tweet_content)
VALUES('rocky_balboa93', 'yeah right....'); 


SELECT * FROM tweets_table; 





