SET SCHEMA APP;

DROP TABLE COMMENTS;

CREATE TABLE COMMENTS (ID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	USER_ID INT NOT NULL, 
	COMMENTTOPIC VARCHAR(30) NOT NULL, 
	COMMENTCONTENT VARCHAR(1000) NOT NULL);

INSERT INTO COMMENTS (USER_ID, COMMENTTOPIC, COMMENTCONTENT)
	VALUES (1, 'Welcome to Community!', 'Thank you all for joining the Community Network! I hope you are able to connect with the people around you!'),
	(3, 'Pool is open!', 'That was a long weekend when the pool was closed! Glad its open again!'),
	(5, 'bbq today', 'whoever is interested, I will be bbqing at the pool cabana at 6pm'),
	(1, 'need to borrow a hammer', 'I am hanging some pictures on my wall and I need to borrow a hammer to set the nails.. help?');
	
SELECT * FROM COMMENTS;
	
SELECT COMMENTS.ID, USERS.USERNAME, COMMENTS.COMMENTTOPIC, COMMENTS.COMMENTCONTENT
FROM COMMENTS
INNER JOIN USERS
ON COMMENTS.USER_ID=USERS.USER_ID;

--INSERT INTO COMMENTS (ID, USER_ID, COMMENTTOPIC, COMMENTCONTENT)
--	VALUES (2, 'bassmonty', 'Pool is open!', 'That was a long weekend when the pool was closed! Glad its open again!');

SELECT * FROM COMMENTS WHERE ID = 2;

SELECT * FROM COMMENTS WHERE USER_ID = 3;


-- Select an ID
SELECT * FROM COMMENTS WHERE USERNAME = 'bassmonty';
-- Select a NAME matching a pattern
SELECT * FROM COMMENTS WHERE USERNAME LIKE '%S%';

SELECT * FROM COMMENTS ORDER BY lower(COMMENTTOPIC);

SELECT * FROM COMMENTS ORDER BY lower(COMMENTTOPIC) LIKE '%?%';

SELECT * FROM COMMENTS ORDER BY lower(COMMENTCONTENT) LIKE '%?%';

