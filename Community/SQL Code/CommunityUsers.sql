SET SCHEMA APP;

DROP TABLE USERS;

CREATE TABLE USERS (ID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
			NAME VARCHAR(20) NOT NULL, 
			USERNAME VARCHAR(30) NOT NULL, 
			PASSWORD VARCHAR(16) NOT NULL, 
			EMAIL VARCHAR(80) NOT NULL);

INSERT INTO USERS (NAME, USERNAME, PASSWORD, EMAIL) VALUES ('Paul', 'bassmonty', 'hisson', 'pmontoro88@gmail.com');
INSERT INTO USERS (NAME, USERNAME, PASSWORD, EMAIL) VALUES ('Jake', 'jdro', 'abc', 'jake@community.com');
INSERT INTO USERS (NAME, USERNAME, PASSWORD, EMAIL) VALUES ('Norman', 'normrich', 'abc', 'norman.richards@community.com');
INSERT INTO USERS (NAME, USERNAME, PASSWORD, EMAIL) VALUES ('Greg', 'wildwest', 'abc', 'g.saathoff@community.com');
INSERT INTO USERS (NAME, USERNAME, PASSWORD, EMAIL) VALUES ('Chris', 'mccarron', 'abc', 'chris.mccarron@community.com');
INSERT INTO USERS (NAME, USERNAME, PASSWORD, EMAIL) VALUES ('Kelly', 'keene', 'abc', 'keene@community.com');
INSERT INTO USERS (NAME, USERNAME, PASSWORD, EMAIL) VALUES ('Justin', 'justincasey', 'abc', 'justins@community.com');

SELECT * FROM USERS;
SELECT * FROM USERS WHERE ID = 5;
SELECT * FROM USERS WHERE NAME='Paul Montoro';
