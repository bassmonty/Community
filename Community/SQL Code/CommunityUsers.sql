SET SCHEMA APP;

CREATE TABLE COMM_USER (ID BIGINT PRIMARY KEY NOT NULL, UUID VARCHAR(100) NOT NULL, NAME VARCHAR(20) NOT NULL, PASSWORD VARCHAR(16) NOT NULL, EMAIL VARCHAR(80) NOT NULL);

INSERT INTO COMM_USER (ID, UUID, NAME, PASSWORD, EMAIL)
	VALUES (1, '067e6162-3b6f-4ae2-a171-2470b63dff00', 'Paul Montoro', 'hisson', 'paul@community.com'),
	(2, '54947df8-0e9e-4471-a2f9-9af509fb5889', 'Jake Dromgoole', 'abc', 'jake@community.com'),
	(3, '38400000-8cf0-11bd-b23e-10b96e4ef00d','Norman Richards', 'abc', 'norman.richards@community.com');
	
DROP TABLE COMM_USER;

--INSERT INTO ACC_USER (ID, NAME, PASSWORD, EMAIL)
--	VALUES (2, 'Sally Ride', 'abc', 'sally@nasa.com');
--
--INSERT INTO ACC_USER (ID, NAME, PASSWORD, EMAIL)
--	VALUES (3, 'Jeff Bezos', 'abc', 'jeff.b@amazon.com');

SELECT * FROM COMM_USER;

-- Select an ID
SELECT * FROM COMM_USER WHERE ID = 3;
-- Select a NAME matching a pattern
SELECT * FROM COMM_USER WHERE NAME LIKE '%S%';


SELECT * FROM COMM_USER;


-- DROP TABLE COMM_USER;