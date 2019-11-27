DROP TABLE orderHistory;
DROP TABLE handling;
DROP TABLE weight;
DROP TABLE pInfo;
DROP TABLE inventory;


CREATE TABLE inventory(
     partNum int primary key,
     quantity int
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
	oQuantity int,
    partDesc varchar(50),
    price float(8,2),
    email varchar(50),
    dateOr DATETIME,
    status varchar(50),
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

INSERT INTO weight(minW, maxW, cost)
    VALUES
            (0.00, 1.00, 3.00),
            (2.00, 3.00, 4.00),
            (3.00, 4.00, 5.00),
            (4.00, 5.00, 6.00),
            (5.00, 6.00, 7.00),
            (7.00, 8.00, 8.00),
            (8.00, 9.00, 9.00),
            (10.00, 12.00, 10.00),
            (15.00, 20.00, 14.00),
            (20.00, 40.00, 35.00),
            (40.00, 80.00, 100.00),
            (80.00, 500.00, 150.00);

INSERT INTO pInfo(email,fName,lName,creditCard,addr)
    VALUES
            ('arojo@yahoo.com','Alexander', 'Rojas', '123456789123', '550 N Annie Glidden Rd, Dekalb, IL, USA'),
			('rdmperson@hotmail.com', 'Brandon', 'Alexander', '829329129329', 'That one place down the road'),
			('oddboi@AOL.com', 'Cam', 'Lloyd', '273823847827', 'On the highway somewhere');

INSERT INTO orderHistory(partNum, oQuantity, partDesc, price, email, dateOr, status)
    VALUES
            (1, 1, 'windshield w/ polymer ',178.76,'arojo@yahoo.com', '1998-03-21-11-12-56', 'authorized'),
			(2, 4, 'wiper blade pair', 93.48, 'rdmperson@hotmail.com', '2012-04-12-04-23-47', 'shipped'),
			(3, 263, 'solenoid', 9620.54, 'oddboi@AOL.com', '2001-11-24-10-54-14', 'shipped');
