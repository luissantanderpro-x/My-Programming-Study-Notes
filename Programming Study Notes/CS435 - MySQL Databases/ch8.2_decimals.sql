# <SQL> | Ch8.1 - DECIMAL 
# ---------------------------------------

-- DECIMAL
# DECIMAL(arg1, arg2)

-- arg1 - Total number Of Digits 
-- arg2 - Digits after Decimal 

#Ex
----
-- DECIMAL(5, 2)

-- 999.99 

-- DECIMAL(M, D). 
-- M is the maximum number of digits (the precision). It has a range of 1 to 65.
-- D is the number of digits to the right of the decimal point (the scale).
--  It has a range of 0 to 30 and must be no larger than M.


# Example with a Simple Table 

CREATE TABLE items (
	price DECIMAL(5, 2)
);

INSERT INTO items(price) VALUES(7); 
INSERT INTO items(price) VALUES(34.88); 
INSERT INTO items(price) VALUES(298.9999); # Rounds the Number to the two digits 
INSERT INTO items(price) VALUES(1.9999);  

# Output: 
# ------
-- +--------+
-- | price  |
-- +--------+
-- |   7.00 |
-- |  34.88 |
-- | 299.00 |
-- |   2.00 |
-- +--------+