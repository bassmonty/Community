SET SCHEMA APP;

CREATE TABLE USERS (ID BIGINT PRIMARY KEY NOT NULL, NAME VARCHAR(20) NOT NULL, USERNAME VARCHAR(30) NOT NULL, PASSWORD VARCHAR(16) NOT NULL, EMAIL VARCHAR(80) NOT NULL);

INSERT INTO USERS (ID, NAME, USERNAME, PASSWORD, EMAIL)
	VALUES (1, 'Paul Montoro', 'bassmonty', 'hisson', 'pmontoro88@gmail.com'),
	(2, 'Jake Dromgoole', 'jdro', 'abc', 'jake@community.com'),
	(3, 'Norman Richards', 'normrich', 'abc', 'norman.richards@community.com');
	
DROP TABLE USERS;

--INSERT INTO ACC_USER (ID, NAME, PASSWORD, EMAIL)
--	VALUES (2, 'Sally Ride', 'abc', 'sally@nasa.com');
--
--INSERT INTO ACC_USER (ID, NAME, PASSWORD, EMAIL)
--	VALUES (3, 'Jeff Bezos', 'abc', 'jeff.b@amazon.com');

SELECT * FROM USERS;

-- Select an ID
SELECT * FROM USERS WHERE ID = 3;
-- Select a NAME matching a pattern
SELECT * FROM USERS WHERE NAME LIKE '%S%';


SELECT * FROM USERS;
