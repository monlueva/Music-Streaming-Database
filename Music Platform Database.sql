CREATE TABLE SUBSCRIPTION 
( 
SubTypeID int Primary Key, 
SubTypeName varchar(20), 
SubTypeDesc varchar(20) 
)

CREATE TABLE CUSTOMER  
(   
CusCode int Primary Key,   
CusLastName varchar(20),   
CusFirstName varchar(20),  
CusCountry varchar(75),  
SubTypeID int, 
FOREIGN KEY(SubTypeID) REFERENCES SUBSCRIPTION(SubTypeID)  
)

CREATE TABLE ARTIST 
( 
ArtistID int Primary Key, 
ArtistLastName varchar(20), 
ArtistFirstName varchar(20), 
GenreID int, 
FOREIGN KEY(GenreID) REFERENCES Genre(GenreID)  
)



CREATE TABLE LABEL 
( 
LabelID int Primary Key, 
LabelName varchar(20), 
LabelCompany varchar(20) 
)

CREATE TABLE GENRE 
( 
GenreID int Primary Key, 
GenreName varchar(20), 
GenreDesc varchar(20) 
)


CREATE TABLE ALBUM 
( 
AlbumID int Primary Key, 
AlbumName varchar(20), 
AlbumDate DATE, 
LabelID int, 
FOREIGN KEY(LabelID) REFERENCES LABEL(LabelID)  
)


CREATE TABLE SONG 
( 
SongID int Primary Key, 
SongName varchar(20), 
SongTime char(2), 
AlbumID int, 
FOREIGN KEY(AlbumID) REFERENCES ALBUM(AlbumID)  
)

CREATE TABLE WRITER 
( 
WriterID int Primary Key, 
WriterLastName varchar(70), 
WriterFirstName varchar(70), 
SongID int, 
FOREIGN KEY(SongID) REFERENCES SONG(SongID)  
)

CREATE TABLE GENRE 
( 
GenreID int Primary Key, 
GenreName varchar(20), 
GenreDesc varchar(20) 
)

CREATE TABLE ARTIST 
( 
ArtistID int Primary Key, 
ArtistLastName varchar(20), 
ArtistFirstName varchar(20), 
GenreID int, 
FOREIGN KEY(GenreID) REFERENCES Genre(GenreID)  
)


CREATE TABLE SONG 
( 
SongID int Primary Key, 
SongName varchar(20), 
SongTime char(2), 
AlbumID int, 
FOREIGN KEY(AlbumID) REFERENCES ALBUM(AlbumID)  
)

INSERT INTO CUSTOMER(CusCode, CusLastName, CusFirstName, CusCountry, SubTypeID) VALUES (102, 'Smith', 'Robert', 'United States', 002)


INSERT INTO SUBSCRIPTION(SubTypeID, SubTypeName, SubTypeDesc) VALUES (002, 'Student Plan', 'Student Discount')


INSERT INTO SUBSCRIPTION(SubTypeID, SubTypeName, SubTypeDesc) VALUES (003, 'Family Plan', 'Family Discount')


INSERT INTO SUBSCRIPTION(SubTypeID, SubTypeName, SubTypeDesc) VALUES (001, 'Standard Plan', 'Standard Price')


SELECT * FROM SUBSCRIPTION


INSERT INTO SUBSCRIPTION(SubTypeID, SubTypeName, SubTypeDesc) VALUES (001, 'Standard Plan', 'Standard Price')


INSERT INTO SUBSCRIPTION(SubTypeID, SubTypeName, SubTypeDesc) VALUES (002, 'Student Plan', 'Student Discount') 
INSERT INTO SUBSCRIPTION(SubTypeID, SubTypeName, SubTypeDesc) VALUES (003, 'Family Plan', 'Family Discount') 
INSERT INTO SUBSCRIPTION(SubTypeID, SubTypeName, SubTypeDesc) VALUES (001, 'Standard Plan', 'Standard Price')



INSERT INTO CUSTOMER(CusCode, CusLastName, CusFirstName, CusCountry, SubTypeID) VALUES (102, 'Smith', 'Robert', 'United States', 001)



INSERT INTO CUSTOMER(CusCode, CusLastName, CusFirstName, CusCountry, SubTypeID) VALUES (103, 'Lozano', 'Susanna', 'Mexico', 002)



INSERT INTO CUSTOMER(CusCode, CusLastName, CusFirstName, CusCountry, SubTypeID) VALUES (104, 'Brooks', 'Steve', 'United States', 002)



INSERT INTO CUSTOMER(CusCode, CusLastName, CusFirstName, CusCountry, SubTypeID) VALUES (105, 'Smith', 'Anthony', 'United States', 003)


INSERT INTO GENRE(GenreID, GenreName, GenreDesc) VALUES (1002, 'Rock', 'rock and roll music')


INSERT INTO GENRE(GenreID, GenreName, GenreDesc) VALUES (1003, 'Dream Pop', 'type of alt rock')


INSERT INTO GENRE(GenreID, GenreName, GenreDesc) VALUES (1004, 'Pop', 'upbeat')


INSERT INTO GENRE(GenreID, GenreName, GenreDesc) VALUES (1004, 'Rap', 'fast')


INSERT INTO GENRE(GenreID, GenreName, GenreDesc) VALUES (1005, 'Rap', 'fast')


INSERT INTO GENRE(GenreID, GenreName, GenreDesc) VALUES (1006, 'Country', 'southern')


INSERT INTO GENRE(GenreID, GenreName, GenreDesc) VALUES (1007, 'Latin', 'from latin America')

INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2001, 'Peck', 'Orville', 1006)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2001, 'Peck', 'Orville', 1006)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2003, 'Blood', 'Weyes', 1003)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2002, 'Smith', 'Elliott', 1002)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2004, 'Fernandez', 'Vicente', 1007)


SELECT * FROM ARTIST


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2005, '', 'Beach House', 1003)


SELECT * FROM ARTIST


SELECT * FROM ARTIST


SELECT * FROM ARTIST


SELECT * FROM ARTIST


DELETE FROM ARTIST WHERE ArtistID = 2005


SELECT * FROM ARTIST


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2006, 'Venegas', 'Julieta', 1004)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2006, 'Venegas', 'Julieta', 1004)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2005, 'Ocean', 'Frank', 1005)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2005, 'Ocean', 'Frank', 1005)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2006, 'Venegas', 'Julieta', 1004)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2007, 'Takeuchi', 'Mariya', 1004)


INSERT INTO Label(LabelID, LabelName, LabelCompany) VALUES (201, 'Sub-Pop', 'Warner')


INSERT INTO Label(LabelID, LabelName, LabelCompany) VALUES (201, 'Boys Dont Cry', 'Hypebeast')


INSERT INTO Label(LabelID, LabelName, LabelCompany) VALUES (201, 'Warner Music Japan', 'Warner')


INSERT INTO Label(LabelID, LabelName, LabelCompany) VALUES (202, 'Virgin Records', 'Universals')



INSERT INTO Label(LabelID, LabelName, LabelCompany) VALUES (203, 'Sony Mexico', 'Sony Entertainment')


INSERT INTO Label(LabelID, LabelName, LabelCompany) VALUES (204, 'Boys Dont Cry', 'Hypebeast')


INSERT INTO Label(LabelID, LabelName, LabelCompany) VALUES (205, 'Warner Music Japan', 'Warner')

INSERT INTO Album(AlbumID, AlbumName, AlbumDate, LabelID) VALUES (3001, 'Pony', '2019-22-03', 201)


CREATE TABLE SUBSCRIPTION 
( 
SubTypeID int Primary Key, 
SubTypeName varchar(20), 
SubTypeDesc varchar(20) 
)


CREATE TABLE CUSTOMER  
(   
CusCode int Primary Key,   
CusLastName varchar(20),   
CusFirstName varchar(20),  
CusCountry varchar(75),  
SubTypeID int, 
FOREIGN KEY(SubTypeID) REFERENCES SUBSCRIPTION(SubTypeID)  
)


CREATE TABLE ARTIST 
( 
ArtistID int Primary Key, 
ArtistLastName varchar(20), 
ArtistFirstName varchar(20), 
GenreID int, 
FOREIGN KEY(GenreID) REFERENCES Genre(GenreID)  
)


CREATE TABLE LABEL 
( 
LabelID int Primary Key, 
LabelName varchar(20), 
LabelCompany varchar(20) 
)


CREATE TABLE GENRE 
( 
GenreID int Primary Key, 
GenreName varchar(20), 
GenreDesc varchar(20) 
)


CREATE TABLE ALBUM 
( 
AlbumID int Primary Key, 
AlbumName varchar(20), 
AlbumDate DATE, 
LabelID int, 
FOREIGN KEY(LabelID) REFERENCES LABEL(LabelID)  
)


CREATE TABLE SONG 
( 
SongID int Primary Key, 
SongName varchar(20), 
SongTime char(2), 
AlbumID int, 
FOREIGN KEY(AlbumID) REFERENCES ALBUM(AlbumID)  
)


CREATE TABLE WRITER 
( 
WriterID int Primary Key, 
WriterLastName varchar(70), 
WriterFirstName varchar(70), 
SongID int, 
FOREIGN KEY(SongID) REFERENCES SONG(SongID)  
)


CREATE TABLE GENRE 
( 
GenreID int Primary Key, 
GenreName varchar(20), 
GenreDesc varchar(20) 
)


CREATE TABLE ARTIST 
( 
ArtistID int Primary Key, 
ArtistLastName varchar(20), 
ArtistFirstName varchar(20), 
GenreID int, 
FOREIGN KEY(GenreID) REFERENCES Genre(GenreID)  
)


CREATE TABLE SONG 
( 
SongID int Primary Key, 
SongName varchar(20), 
SongTime char(2), 
AlbumID int, 
FOREIGN KEY(AlbumID) REFERENCES ALBUM(AlbumID)  
)

INSERT INTO CUSTOMER(CusCode, CusLastName, CusFirstName, CusCountry, SubTypeID) VALUES (102, 'Smith', 'Robert', 'United States', 002)

INSERT INTO SUBSCRIPTION(SubTypeID, SubTypeName, SubTypeDesc) VALUES (002, 'Student Plan', 'Student Discount')


INSERT INTO SUBSCRIPTION(SubTypeID, SubTypeName, SubTypeDesc) VALUES (003, 'Family Plan', 'Family Discount')


INSERT INTO SUBSCRIPTION(SubTypeID, SubTypeName, SubTypeDesc) VALUES (001, 'Standard Plan', 'Standard Price')


SELECT * FROM SUBSCRIPTION


INSERT INTO SUBSCRIPTION(SubTypeID, SubTypeName, SubTypeDesc) VALUES (001, 'Standard Plan', 'Standard Price')


INSERT INTO SUBSCRIPTION(SubTypeID, SubTypeName, SubTypeDesc) VALUES (002, 'Student Plan', 'Student Discount') 
INSERT INTO SUBSCRIPTION(SubTypeID, SubTypeName, SubTypeDesc) VALUES (003, 'Family Plan', 'Family Discount') 
INSERT INTO SUBSCRIPTION(SubTypeID, SubTypeName, SubTypeDesc) VALUES (001, 'Standard Plan', 'Standard Price')


INSERT INTO CUSTOMER(CusCode, CusLastName, CusFirstName, CusCountry, SubTypeID) VALUES (102, 'Smith', 'Robert', 'United States', 001)


INSERT INTO CUSTOMER(CusCode, CusLastName, CusFirstName, CusCountry, SubTypeID) VALUES (103, 'Lozano', 'Susanna', 'Mexico', 002)


INSERT INTO CUSTOMER(CusCode, CusLastName, CusFirstName, CusCountry, SubTypeID) VALUES (104, 'Brooks', 'Steve', 'United States', 002)


INSERT INTO CUSTOMER(CusCode, CusLastName, CusFirstName, CusCountry, SubTypeID) VALUES (105, 'Smith', 'Anthony', 'United States', 003)


INSERT INTO GENRE(GenreID, GenreName, GenreDesc) VALUES (1002, 'Rock', 'rock and roll music')


INSERT INTO GENRE(GenreID, GenreName, GenreDesc) VALUES (1003, 'Dream Pop', 'type of alt rock')


INSERT INTO GENRE(GenreID, GenreName, GenreDesc) VALUES (1004, 'Pop', 'upbeat')


INSERT INTO GENRE(GenreID, GenreName, GenreDesc) VALUES (1004, 'Rap', 'fast')


INSERT INTO GENRE(GenreID, GenreName, GenreDesc) VALUES (1005, 'Rap', 'fast')


INSERT INTO GENRE(GenreID, GenreName, GenreDesc) VALUES (1006, 'Country', 'southern')


INSERT INTO GENRE(GenreID, GenreName, GenreDesc) VALUES (1007, 'Latin', 'from latin America')


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2001, 'Peck', 'Orville', 1006)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2001, 'Peck', 'Orville', 1006)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2003, 'Blood', 'Weyes', 1003)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2002, 'Smith', 'Elliott', 1002)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2004, 'Fernandez', 'Vicente', 1007)


SELECT * FROM ARTIST


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2005, '', 'Beach House', 1003)


SELECT * FROM ARTIST

SELECT * FROM ARTIST


SELECT * FROM ARTIST


SELECT * FROM ARTIST


DELETE FROM ARTIST WHERE ArtistID = 2005


SELECT * FROM ARTIST


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2006, 'Venegas', 'Julieta', 1004)

INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2006, 'Venegas', 'Julieta', 1004)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2005, 'Ocean', 'Frank', 1005)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2005, 'Ocean', 'Frank', 1005)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2006, 'Venegas', 'Julieta', 1004)


INSERT INTO ARTIST(ArtistID, ArtistLastName, ArtistFirstName, GenreID) VALUES (2007, 'Takeuchi', 'Mariya', 1004)


INSERT INTO Label(LabelID, LabelName, LabelCompany) VALUES (201, 'Sub-Pop', 'Warner')


INSERT INTO Label(LabelID, LabelName, LabelCompany) VALUES (201, 'Boys Dont Cry', 'Hypebeast')


INSERT INTO Label(LabelID, LabelName, LabelCompany) VALUES (201, 'Warner Music Japan', 'Warner')


INSERT INTO Label(LabelID, LabelName, LabelCompany) VALUES (202, 'Virgin Records', 'Universals')


INSERT INTO Label(LabelID, LabelName, LabelCompany) VALUES (203, 'Sony Mexico', 'Sony Entertainment')


INSERT INTO Label(LabelID, LabelName, LabelCompany) VALUES (204, 'Boys Dont Cry', 'Hypebeast')


INSERT INTO Label(LabelID, LabelName, LabelCompany) VALUES (205, 'Warner Music Japan', 'Warner')


INSERT INTO Album(AlbumID, AlbumName, AlbumDate, LabelID) VALUES (3001, 'Pony', '2019-22-03', 201)


INSERT INTO Album(AlbumID, AlbumName, AlbumDate, LabelID) VALUES (3001, 'Pony', 2019-22-03, 201)


INSERT INTO Album(AlbumID, AlbumName, AlbumDate, LabelID) VALUES (3001, 'Pony', '2019-22-03', 201)


INSERT INTO Album(AlbumID, AlbumName, AlbumDate, LabelID) VALUES (3001, 'Pony', '2019-22-03', 201)


INSERT INTO Album(AlbumID, AlbumName, AlbumDate, LabelID) VALUES (3001, 'Pony', '2019-02-03', 201)


INSERT INTO Album(AlbumID, AlbumName, AlbumDate, LabelID) VALUES (3001, 'Pony', '03-JAN-19', 201)


SELECT * FROM LABEL


INSERT INTO Album(AlbumID, AlbumName, AlbumDate, LabelID) VALUES (3006, 'Blonde', '20-AUG-16', 204)


INSERT INTO Album(AlbumID, AlbumName, AlbumDate, LabelID) VALUES (3002, 'Either/or', '25-FEB-97', 202)


INSERT INTO Album(AlbumID, AlbumName, AlbumDate, LabelID) VALUES (3003, 'Titanic Rising', '01-APR-19', 201)


INSERT INTO Album(AlbumID, AlbumName, AlbumDate, LabelID) VALUES (3003, 'Titanic Rising', '01-APR-19', 201)


INSERT INTO Album(AlbumID, AlbumName, AlbumDate, LabelID) VALUES (3004, 'Si', '18-NOV-03', 203)


INSERT INTO Album(AlbumID, AlbumName, AlbumDate, LabelID) VALUES (3005, 'Que De Raro Tiene', '01-JAN-92', 203)


INSERT INTO Album(AlbumID, AlbumName, AlbumDate, LabelID) VALUES (3007, 'Expressions', '21-MAY-08', 205)


SELECT * FROM ALBUM


INSERT INTO SONG(SongID, SongName, SongTime, AlbumID) VALUES (101, 'Lento', 4, 3004)


INSERT INTO SONG(SongID, SongName, SongTime, AlbumID) VALUES (102, 'Andar Conmigo', 3, 3004)


INSERT INTO SONG(SongID, SongName, SongTime, AlbumID) VALUES (103, 'Nights', 5, 3006)


INSERT INTO SONG(SongID, SongName, SongTime, AlbumID) VALUES (106, 'Plastic', 4, 3007)


INSERT INTO SONG(SongID, SongName, SongTime, AlbumID) VALUES (104, 'Dead of the Night', 4, 3001)


INSERT INTO SONG(SongID, SongName, SongTime, AlbumID) VALUES (105, 'Roses Are Falling', 3, 3001)

INSERT INTO SONG(SongID, SongName, SongTime, AlbumID) VALUES (107, 'Say Yes', 2, 3002)

INSERT INTO SONG(SongID, SongName, SongTime, AlbumID) VALUES (108, 'Andromeda', 4, 3003)

INSERT INTO SONG(SongID, SongName, SongTime, AlbumID) VALUES (109, 'Que De Raro Tiene', 3, 3005)

INSERT INTO SONG(SongID, SongName, SongTime, AlbumID) VALUES (106, 'Plastic Love', 4, 3007)

INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2001, 'Urieta', 'Martin', 109)

INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2002, 'Mering', 'Natalie', 108)


INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2004, 'Takeuchi', 'Mariya', 106)


INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2005, 'Peck', 'Orville', 104)


INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2003, 'Smith', 'Elliott', 107)


INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2006, 'Peck', 'Orville', 105)


INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2007, 'Venegas', 'Julieta', 101)


INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2008, 'Uzowuru', 'Micheal', 103)


INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2009, '', 'Cuti', 102)


INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2002, 'Mering', 'Natalie', 108)


INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2004, 'Takeuchi', 'Mariya', 106)


INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2003, 'Smith', 'Elliott', 107)


INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2005, 'Peck', 'Orville', 104)


INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2006, 'Peck', 'Orville', 105)


INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2008, 'Uzowuru', 'Micheal', 103)


INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2007, 'Venegas', 'Julieta', 101)


INSERT INTO WRITER(WriterID, WriterLastName, WriterFirstName, SongID) VALUES (2009, '', 'Cuti', 102)


SELECT * FROM SUBSCRIPTION


SELECT * FROM CUSTOMER


SELECT * FROM ARTIST


SELECT * FROM LABEL


SELECT * FROM GENRE

SELECT * FROM ALBUM


SELECT * FROM SONG


SELECT * FROM WRITER


UPDATE SONG SET SongName = 'Solo' WHERE SongID = 103


SELECT * FROM SONG


ALTER TABLE ARTIST MODIFY(CusFirstName varchar(75))


ALTER TABLE CUSTOMER MODIFY(CusFirstName varchar(75))


INNER JOIN SONG  

ON ALBUM.AlbumID = SONG.AlbumID

INNER JOIN SONG 


SELECT * FROM SONG 
INNER JOIN SONG 
ON ALBUM.AlbumID = SONG.AlbumID


SELECT * FROM SONG


SELECT * FROM ALBUM


SELECT * FROM ALBUM 
INNER JOIN SONG 
ON ALBUM.AlbumID = SONG.AlbumID