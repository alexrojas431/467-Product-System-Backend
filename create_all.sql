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
    type int
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
            (10, 89),
            (11, 20),
            (12, 50),
            (13, 12),
            (14, 89),
            (15, 97),
            (16, 3),
            (17, 100),
            (18, 9),
            (19, 67),
            (20, 89),
            (21, 20),
            (22, 50),
            (23, 12),
            (24, 89),
            (25, 97),
            (26, 3),
            (27, 100),
            (28, 9),
            (29, 67),
            (30, 89),
            (31, 20),
            (32, 50),
            (33, 12),
            (34, 89),
            (35, 97),
            (36, 3),
            (37, 100),
            (38, 9),
            (39, 67),
            (40, 89),
            (41, 20),
            (42, 50),
            (43, 12),
            (44, 89),
            (45, 97),
            (46, 3),
            (47, 100),
            (48, 9),
            (49, 67),
            (50, 89),
            (51, 20),
            (52, 50),
            (53, 12),
            (54, 89),
            (55, 97),
            (56, 3),
            (57, 100),
            (58, 9),
            (59, 67),
            (60, 89),
            (61, 20),
            (62, 50),
            (63, 12),
            (64, 89),
            (65, 97),
            (66, 3),
            (67, 100),
            (68, 9),
            (69, 67),
            (70, 89),
            (71, 20),
            (72, 50),
            (73, 12),
            (74, 89),
            (75, 97),
            (76, 3),
            (77, 100),
            (78, 9),
            (79, 67),
            (80, 89),
            (81, 20),
            (82, 50),
            (83, 12),
            (84, 89),
            (85, 97),
            (86, 3),
            (87, 100),
            (88, 9),
            (89, 67),
            (90, 89),
            (91, 20),
            (92, 50),
            (93, 12),
            (94, 89),
            (95, 97),
            (96, 3),
            (97, 100),
            (98, 9),
            (99, 67),
            (100, 89),
            (101, 20),
            (102, 50),
            (103, 12),
            (104, 89),
            (105, 97),
            (106, 3),
            (107, 100),
            (108, 9),
            (109, 67),
            (110, 89),
            (111, 89),
            (112, 50),
            (113, 12),
            (114, 89),
            (115, 97),
            (116, 3),
            (117, 100),
            (118, 9),
            (119, 67),
            (120, 67),
            (121, 89),
            (122, 50),
            (123, 12),
            (124, 89),
            (125, 97),
            (126, 3),
            (127, 100),
            (128, 9),
            (129, 67),
            (130, 67),
            (131, 89),
            (132, 50),
            (133, 12),
            (134, 89),
            (135, 97),
            (136, 3),
            (137, 100),
            (138, 9),
            (139, 67),
            (140, 67),
            (141, 89),
            (142, 50),
            (143, 12),
            (144, 89),
            (145, 97),
            (146, 3),
            (147, 100),
            (148, 9),
            (149, 67);

INSERT INTO handling(fee,type)
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
