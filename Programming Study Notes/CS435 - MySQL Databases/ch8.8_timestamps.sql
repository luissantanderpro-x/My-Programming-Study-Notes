# <SQL> | Ch8.8 - Time Stamps 
# ------------------------------------------------------------

# Timestamps - Storing meta data saving infomation when you insert something into a table 
# Storing the meta data. 

-- MySQL converts TIMESTAMP values from the current time zone to UTC for storage, and back 
-- from UTC to the current time zone for retrieval. 

# Timestamps
-- CREATE TABLE comments(
-- 	content VARCHAR(100),
-- 	created_at TIMESTAMP DEFAULT NOW()
-- );


-- INSERT INTO comments(content) VALUES('lol what a funny article');
-- INSERT INTO comments(content) VALUES('I found this offensive');

-- SELECT * FROM comments ORDER BY created_at DESC;

# ON UPDATE when the row is changed update to the current time stamp 
CREATE TABLE comments2(
	content VARCHAR(100),
	created_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP # Creates Time stamp everytime row changes.
);


INSERT INTO comments2(content) VALUES('lol what a funny article');
INSERT INTO comments2(content) VALUES('I found this offensive');
INSERT INTO comments2(content) VALUES('just lololololol');

SELECT * FROM comments2; 

UPDATE comments2 SET content='lol what a not so funny article it is' WHERE content='lol what a funny article';

SELECT * FROM comments2; 

UPDATE comments2 SET content='lol what a funny article' WHERE content='lol what a not so funny article it is';

-- +--------------------------+---------------------+
-- | content                  | created_at          |
-- +--------------------------+---------------------+
-- | lol what a funny article | 2017-12-08 12:21:26 |
-- | I found this offensive   | 2017-12-08 12:18:40 |
-- | just lololololol         | 2017-12-08 12:18:40 |
-- +--------------------------+---------------------+

UPDATE tweets_table SET tweet_content="didn't catch" WHERE tweet_id=1;