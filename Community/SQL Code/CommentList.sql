SET SCHEMA APP;

CREATE TABLE COMMENTS (ID INT PRIMARY KEY NOT NULL, USER_ID INT NOT NULL, COMMENTTITLE VARCHAR(30) NOT NULL, COMMENTCONTENT VARCHAR(1000) NOT NULL);

INSERT INTO COMMENTS (ID, USER_ID, COMMENTTITLE, COMMENTCONTENT)
	VALUES (1, 1, 'Welcome to Community!', 'Thank you all for joining the Community Network! I hope you are able to connect with the people around you!'),
	(2, 1, 'Pool is open!', 'That was a long weekend when the pool was closed! Glad its open again!'),
	(3, 1, 'bbq today', 'whoever is interested, I will be bbqing at the pool cabana at 6pm'),
	(4, 1, 'need to borrow a hammer', 'I am hanging some pictures on my wall and I need to borrow a hammer to set the nails.. help?');
	
	
	
DROP TABLE COMMENTS;

--INSERT INTO COMMENTS (ID, USER_ID, COMMENTTITLE, COMMENTCONTENT)
--	VALUES (2, 'bassmonty', 'Pool is open!', 'That was a long weekend when the pool was closed! Glad its open again!');

SELECT * FROM COMMENTS;

-- Select an ID
SELECT * FROM COMMENTS WHERE USERNAME = 'bassmonty';
-- Select a NAME matching a pattern
SELECT * FROM COMMENTS WHERE USERNAME LIKE '%S%';

SELECT * FROM COMMENTS ORDER BY lower(COMMENTTITLE);

SELECT * FROM COMMENTS ORDER BY lower(COMMENTTITLE) LIKE '%?%';

SELECT * FROM COMMENTS ORDER BY lower(COMMENTCONTENT) LIKE '%?%';

