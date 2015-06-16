SET SCHEMA APP;

CREATE TABLE COMMUNITYLIST (ID BIGINT PRIMARY KEY NOT NULL, NAME VARCHAR(50) NOT NULL, ADDRESS VARCHAR(50) NOT NULL);

INSERT INTO COMMUNITYLIST (ID, NAME, ADDRESS)
	VALUES (1, 'The Park at Lakeline', '2800 S. Lakeline Blvd. Cedar Park, TX 78613'), 
	(2, 'The Park at Lakeline', '2850 S. Lakeline Blvd. Cedar Park, TX 78613'),
	(2, 'Lakeline East Apartments', '2829 S Lakeline Blvd. Cedar Park, TX 78613'),
	(3, 'Muir Lake Apartments','12600 Avery Ranch Blvd. Cedar Park, TX 78613');
	(4, 'Sycamore Springs','9801 W Parmer Ln, Austin, TX 78717');
	(5, 'Lodge at Lakeline Village','2000 S Lakeline Blvd, Cedar Park, TX 78613');
	(6, 'LakeLine West Apartments','12801 Ridgeline Blvd, Austin, TX 78750');
	(7, 'Indigo Apartmens','10800 Lakeline Blvd, Austin, TX 78717');
	
DROP TABLE COMMUNITYLIST;



SELECT * FROM COMMUNITYLIST;

-- Select an ID
SELECT * FROM COMMUNITYLIST WHERE ID = 3;
-- Select a NAME matching a pattern
SELECT * FROM COMMUNITYLIST WHERE NAME LIKE '%S%';
