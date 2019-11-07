DROP TABLE orderHistory;
DROP TABLE handling;
DROP TABLE weight;
DROP TABLE pInfo;
DROP TABLE inventory;


CREATE TABLE inventory(
     partNum int primary key,
     quantity int
);

CREATE TABLE handling(
    fee int primary key
);

CREATE TABLE weight(
    minW int primary key,
    maxW int,
    cost int
);

CREATE TABLE pInfo(
   email varchar(50) primary key,
   fName varchar(20),
   lName varchar(20),
   creditCard varchar(20),
   addr varchar(100) 
);

CREATE TABLE orderHistory(
    orderID int auto_increment primary key,
    partNum int,
    partDesc varchar(50),
    price float(8,2),
    email varchar(50),
    FOREIGN KEY(partNum) REFERENCES inventory(partNum),
    FOREIGN KEY(email) REFERENCES pInfo(email)
);





