CREATE TABLE orderHistory(
    orderID int auto_increment PRIMARY KEY,
    partNum int,
    partDesc varchar(50),
    price float(8,2),
    email varchar(50),
    FOREIGN KEY (partNum) REFERENCES inventory(partNum),
    FOREIGN KEY (email) REFERENCES pInfo(email),
);