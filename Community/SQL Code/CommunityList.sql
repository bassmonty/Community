SET SCHEMA APP;

CREATE TABLE COMMUNITYLIST (COMMUNITY_ID INT PRIMARY KEY NOT NULL, NAME VARCHAR(100) NOT NULL, ADDRESS VARCHAR(200) NOT NULL);

INSERT INTO COMMUNITYLIST (COMMUNITY_ID, NAME, ADDRESS)
	VALUES (1, 'The Park at Lakeline', '2800 S. Lakeline Blvd. Cedar Park, TX 78613'), 
	(2, 'Muir Lake Apartments', '12600 Avery Ranch Blvd. Cedar Park, TX 78613'),
	(3, 'Sycamore Springs', '9801 W Parmer Ln, Austin, TX 78717');

	
DROP TABLE COMMUNITYLIST;

SELECT * FROM COMMUNITYLIST;

SELECT USERS.USER_ID, USERS.NAME, USERS.USERNAME, USERS.EMAIL, COMMUNITYLIST.NAME
FROM COMMUNITYLIST
INNER JOIN USERS
ON COMMUNITYLIST.COMMUNITY_ID=USERS.COMMUNITY_ID;

-- Select an ID
SELECT * FROM COMMUNITYLIST WHERE ID = 3;
-- Select a NAME matching a pattern
SELECT * FROM COMMUNITYLIST WHERE NAME LIKE '%S%';

SELECT * FROM USERS WHERE COMMUNITY_ID = 2;

SELECT USERS.USER_ID, USERS.NAME, USERS.USERNAME, USERS.EMAIL, COMMUNITYLIST.NAME FROM USERS INNER JOIN COMMUNITYLIST ON COMMUNITYLIST.COMMUNITY_ID=USERS.COMMUNITY_ID ORDER BY USERS.USER_ID;
