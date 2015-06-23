SET SCHEMA APP;
DROP TABLE USERS;
CREATE TABLE USERS (ID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
			NAME VARCHAR(20) NOT NULL, 
			USERNAME VARCHAR(30) NOT NULL, 
			PASSWORD VARCHAR(16) NOT NULL, 
			EMAIL VARCHAR(80) NOT NULL);

INSERT INTO USERS (NAME, USERNAME, PASSWORD, EMAIL) VALUES ('Paul Montoro', 'bassmonty', 'hisson', 'pmontoro88@gmail.com');
INSERT INTO USERS (NAME, USERNAME, PASSWORD, EMAIL) VALUES ('Jake Dromgoole', 'jdro', 'abc', 'jake@community.com');
INSERT INTO USERS (NAME, USERNAME, PASSWORD, EMAIL) VALUES ('Norman Richards', 'normrich', 'abc', 'norman.richards@community.com');
INSERT INTO USERS (NAME, USERNAME, PASSWORD, EMAIL) VALUES ('Greg Saathoff', 'wildwest', 'abc', 'g.saathoff@community.com');
INSERT INTO USERS (NAME, USERNAME, PASSWORD, EMAIL) VALUES ('Chris McCarron', 'mccarron', 'abc', 'chris.mccarron@community.com');
INSERT INTO USERS (NAME, USERNAME, PASSWORD, EMAIL) VALUES ('Kelly Keene', 'keene', 'abc', 'keene@community.com');
INSERT INTO USERS (NAME, USERNAME, PASSWORD, EMAIL) VALUES ('Justin Casey', 'justincasey', 'abc', 'justins@community.com');

SELECT * FROM USERS;
SELECT * FROM USERS WHERE ID = 5;
SELECT * FROM USERS WHERE NAME='Paul Montoro';
