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
    fee float(4,2) primary key,
    feetype int
);

CREATE TABLE weight(
    minW float(8,2) primary key,
    maxW float(8,2),
    cost float(8,2)
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

INSERT INTO inventory(partNum, quantity)
    VALUES
            (1, 20),
            (2, 50),
            (3, 12),
            (4, 89),
            (5, 97),
            (6, 3),
            (7, 100),
            (8, 9),
            (9, 67),
            (10, 89);

INSERT INTO handling(fee)
    VALUES
            (10.00, 1),
            (20.00, 2),
            (30.00, 3),
            (40.00, 4),
            (50.00, 5);

INSERT INTO weight(minW, maxW, cost)
    VALUES
            (0.00, 0.55, 0.00),
            (0.56, 1.00, 1.00),
            (1.01, 1.55, 2.00),
            (1.56, 2.00, 3.00),
            (2.01, 2.55, 4.00),
            (2.56, 3.00, 5.00),
            (3.01, 3.55, 6.00),
            (3.56, 4.00, 7.00),
            (12.01, 12.55, 14.00),
            (12.56, 13.00, 15.00),
            (99.01, 99.55, 100.00),
            (99.56, 100.00, 110.00);

INSERT INTO pInfo(email,fName,lName,creditCard,addr)
    VALUES
            ('arojo@yahoo.com','Alexander', 'Rojas', '123456789123', '550 N Annie Glidden Rd, Dekalb, IL, USA');

INSERT INTO orderHistory(partNum, partDesc, price, email)
    VALUES
            (1, 'windshield w/ polymer ',178.76,'arojo@yahoo.com');
