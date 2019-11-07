CREATE TABLE order(
    orderID int auto_increment primary key,
    partNum int FOREIGN KEY REFERENCES inventory(partNum),
    partDesc varchar(50),
    price float(8,2),
    email varchar(50) FOREIGN KEY REFERENCES pInfo(email),
    addr varchar(100) FOREIGN KEY REFERENCES pInfo(addr),
);