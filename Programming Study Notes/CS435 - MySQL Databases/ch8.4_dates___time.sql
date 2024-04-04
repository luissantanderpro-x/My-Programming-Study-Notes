# <SQL> | Ch8.4 - Dates and Times 
# ------------------------------------------------------------

# Variables
# -----------
# DATE - values with a date but no time  'YYYY-MM-DD' Format 
# TIME - values with a time but no date  'HH:MM:SS' Format 
# DATETIME - values with a date and time 'YYYY-MM-DD HH:MM:SS' Format 

CREATE TABLE people (
	user_id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(100),
	birthdate DATE,
	birthtime TIME,
	birthdt DATETIME,
	PRIMARY KEY(user_id)
);

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');


SELECT * FROM people; 