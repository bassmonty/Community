SET SCHEMA APP;

CREATE TABLE COMM_LIST (ID BIGINT PRIMARY KEY NOT NULL, NAME VARCHAR(50) NOT NULL, ADDRESS VARCHAR(50) NOT NULL, ADRESS-2 VARCHAR(50));

INSERT INTO COMM_LIST (ID, NAME, ADDRESS, ADRESS-2)
	VALUES (1, 'The Park at Lakeline', '2800 S. Lakeline Blvd. Cedar Park, TX 78613', '2850 S. Lakeline Blvd. Cedar Park, TX 78613'),
	(2, 'Lakeline East Apartments', '2829 S Lakeline Blvd. Cedar Park, TX 78613'),
	(3, 'Muir Lake Apartments','12600 Avery Ranch Blvd. Cedar Park, TX 78613');
	
DROP TABLE COMM_LIST;

--INSERT INTO ACC_USER (ID, NAME, PASSWORD, EMAIL)
--	VALUES (2, 'Sally Ride', 'abc', 'sally@nasa.com');
--
--INSERT INTO ACC_USER (ID, NAME, PASSWORD, EMAIL)
--	VALUES (3, 'Jeff Bezos', 'abc', 'jeff.b@amazon.com');

SELECT * FROM COMM_LIST;

-- Select an ID
SELECT * FROM COMM_LIST WHERE ID = 3;
-- Select a NAME matching a pattern
SELECT * FROM COMM_LIST WHERE NAME LIKE '%S%';


SELECT * FROM COMM_LIST;


-- DROP TABLE COMM_LIST;