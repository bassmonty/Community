SET SCHEMA APP;

CREATE TABLE COMMUNITYLIST (ID BIGINT PRIMARY KEY NOT NULL, NAME VARCHAR(50) NOT NULL, ADDRESS VARCHAR(50) NOT NULL, ADRESS-2 VARCHAR(50));

INSERT INTO COMMUNITYLIST (ID, NAME, ADDRESS)
	VALUES (1, 'The Park at Lakeline', '2800 S. Lakeline Blvd. Cedar Park, TX 78613'), 
	(2, 'The Park at Lakeline', '2850 S. Lakeline Blvd. Cedar Park, TX 78613'),
	(2, 'Lakeline East Apartments', '2829 S Lakeline Blvd. Cedar Park, TX 78613'),
	(3, 'Muir Lake Apartments','12600 Avery Ranch Blvd. Cedar Park, TX 78613');
	
DROP TABLE COMMUNITYLIST;



SELECT * FROM COMMUNITYLIST;

-- Select an ID
SELECT * FROM COMMUNITYLIST WHERE ID = 3;
-- Select a NAME matching a pattern
SELECT * FROM COMMUNITYLIST WHERE NAME LIKE '%S%';


SELECT * FROM COMMUNITYLIST;