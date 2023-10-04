USE SE;
GO

-- Chèn dữ liệu vào bảng "users"
INSERT INTO users (userid, usernameid, userrole, userpassword, username, useraddrress, userphone, usermail)
VALUES
    ('1', 'john_doe', 'Admin', 'password123', N'John Doe', N'123 Main St, City', '1234567890', 'john.doe@example.com'),
    ('2', 'jane_smith', 'User', 'p@ssw0rd', N'Jane Smith', N'456 Elm St, Town', '9876543210', 'jane.smith@example.com'),
    ('3', 'bob_johnson', 'User', 'securePwd', N'Bob Johnson', N'789 Oak St, Village', '5555555555', 'bob.johnson@example.com'),
    ('4', 'susan_wilson', 'User', 'myPwd123', N'Susan Wilson', N'101 Pine St, Suburb', '1112223333', 'susan.wilson@example.com'),
    ('5', 'david_anderson', 'User', 'davePwd', N'David Anderson', N'202 Cedar St, County', '4445556666', 'david.anderson@example.com'),
    ('6', 'linda_martin', 'User', 'linda123', N'Linda Martin', N'303 Maple St, Town', '7778889999', 'linda.martin@example.com'),
    ('7', 'michael_smith', 'User', 'mikePwd', N'Michael Smith', N'404 Oak St, Village', '8889990000', 'michael.smith@example.com'),
    ('8', 'emily_jones', 'User', 'emilyPwd', N'Emily Jones', N'505 Elm St, City', '9990001111', 'emily.jones@example.com'),
    ('9', 'daniel_wilson', 'User', 'daniel456', N'Daniel Wilson', N'606 Pine St, Suburb', '1234567890', 'daniel.wilson@example.com'),
    ('10', 'laura_davis', 'User', 'lauraPwd', N'Laura Davis', N'707 Cedar St, County', '9876543210', 'laura.davis@example.com');


-- Chèn dữ liệu vào bảng provider
INSERT INTO provider (providerno, providername, provideraddress, providerphone)
VALUES
    ('1', N'Supplier A', N'123 Supplier St', '1234567890'),
    ('2', N'Supplier B', N'456 Supplier St', '9876543210'),
    ('3', N'Supplier C', N'789 Supplier St', '5555555555'),
    ('4', N'Supplier D', N'101 Supplier St', '1112223333'),
    ('5', N'Supplier E', N'202 Supplier St', '4445556666'),
    ('6', N'Supplier F', N'303 Supplier St', '7778889999'),
    ('7', N'Supplier G', N'404 Supplier St', '8889990000'),
    ('8', N'Supplier H', N'505 Supplier St', '9990001111'),
    ('9', N'Supplier I', N'606 Supplier St', '1234567890'),
    ('10', N'Supplier J', N'707 Supplier St', '9876543210');

-- Chèn dữ liệu vào bảng type
INSERT INTO type (typeno, typename, owntype)
VALUES
    ('1', N'Type A', NULL),
    ('2', N'Type B', NULL),
    ('3', N'Type C', NULL),
    ('4', N'Type D', NULL),
    ('5', N'Type E', NULL),
    ('6', N'Type F', NULL),
    ('7', N'Type G', NULL),
    ('8', N'Type H', NULL),
    ('9', N'Type I', NULL),
    ('10', N'Type J', NULL);

-- Chèn dữ liệu vào bảng product:
INSERT INTO product (productno, productname, typeno, providerno, quantityinstore, price, description, productstate)
VALUES
    ('1', N'Product 1', '1', '1', 100, 10.99, N'This is product 1', N'In Stock'),
    ('2', N'Product 2', '1', '2', 50, 15.99, N'This is product 2', N'In Stock'),
    ('3', N'Product 3', '2', '3', 200, 5.99, N'This is product 3', N'Out of Stock'),
    ('4', N'Product 4', '2', '4', 75, 12.49, N'This is product 4', N'In Stock'),
    ('5', N'Product 5', '3', '5', 60, 8.99, N'This is product 5', N'In Stock'),
    ('6', N'Product 6', '3', '6', 90, 7.99, N'This is product 6', N'Out of Stock'),
    ('7', N'Product 7', '4', '7', 120, 9.99, N'This is product 7', N'In Stock'),
    ('8', N'Product 8', '4', '8', 30, 11.99, N'This is product 8', N'In Stock'),
    ('9', N'Product 9', '5', '9', 180, 6.49, N'This is product 9', N'Out of Stock'),
    ('10', N'Product 10', '5', '10', 25, 13.99, N'This is product 10', N'In Stock');


-- Chèn dữ liệu vào bảng bill:
INSERT INTO bill (billno, billdate, billuserid, billtotal, billusername, billuseraddress, billuserphone, billnote)
VALUES
    ('101', '2023-09-27 10:00:00', '1', 150.75, N'John Doe', N'123 Main St, City', '1234567890', N'Payment received'),
    ('102', '2023-09-27 11:30:00', '2', 75.50, N'Jane Smith', N'456 Elm St, Town', '9876543210', N'Processing order'),
    ('103', '2023-09-27 14:15:00', '3', 225.25, N'Bob Johnson', N'789 Oak St, Village', '5555555555', N'Order shipped'),
    ('104', '2023-09-27 16:45:00', '4', 63.20, N'Susan Wilson', N'101 Pine St, Suburb', '1112223333', N'Payment pending'),
    ('105', '2023-09-27 18:30:00', '5', 168.90, N'David Anderson', N'202 Cedar St, County', '4445556666', N'Order completed'),
    ('106', '2023-09-27 21:20:00', '6', 243.60, N'Linda Martin', N'303 Maple St, Town', '7778889999', N'Order delivered'),
    ('107', '2023-09-27 09:45:00', '7', 288.45, N'Michael Smith', N'404 Oak St, Village', '8889990000', N'Payment received'),
    ('108', '2023-09-27 12:10:00', '8', 170.70, N'Emily Jones', N'505 Elm St, City', '9990001111', N'Order shipped'),
    ('109', '2023-09-27 15:40:00', '9', 405.80, N'Daniel Wilson', N'606 Pine St, Suburb', '1234567890', N'Order completed'),
    ('110', '2023-09-27 17:55:00', '10', 260.35, N'Laura Davis', N'707 Cedar St, County', '9876543210', N'Payment pending');

-- Chèn dữ liệu vào bảng detail_bill:
INSERT INTO detail_bill (billno, productno, quantity, note)
VALUES
    ('101', '1', 3, N''),
    ('101', '2', 2, N''),
    ('102', '3', 1, N''),
    ('102', '4', 2, N''),
    ('103', '5', 4, N''),
    ('104', '6', 3, N''),
    ('105', '7', 5, N''),
    ('105', '8', 2, N''),
    ('106', '9', 3, N''),
    ('107', '10', 4, N'');


-- Chèn dữ liệu vào bảng shoppingcart:
INSERT INTO shoppingcart (scid, scdate, userid, totalamount)
VALUES
    (1, GETDATE(), '1', 250),
    (2, GETDATE(), '2', 135),
    (3, GETDATE(), '3', 375),
    (4, GETDATE(), '4', 105),
    (5, GETDATE(), '5', 280),
    (6, GETDATE(), '6', 405),
    (7, GETDATE(), '7', 480),
    (8, GETDATE(), '8', 285),
    (9, GETDATE(), '9', 540),
    (10, GETDATE(), '10', 345);


-- Chèn dữ liệu vào bảng employee 

INSERT INTO employee (empid, empname, empaddress, empdob, empjob, empsalary)
VALUES
    ('1', N'Employee 1', N'123 Employee St', '1990-01-15', N'Job 1', 50000.0),
    ('2', N'Employee 2', N'456 Employee St', '1985-03-20', N'Job 2', 55000.0),
    ('3', N'Employee 3', N'789 Employee St', '1995-05-25', N'Job 3', 60000.0),
    ('4', N'Employee 4', N'101 Employee St', '1992-08-10', N'Job 4', 52000.0),
    ('5', N'Employee 5', N'202 Employee St', '1988-11-30', N'Job 5', 58000.0),
    ('6', N'Employee 6', N'303 Employee St', '1993-02-12', N'Job 6', 54000.0),
    ('7', N'Employee 7', N'404 Employee St', '1994-04-05', N'Job 7', 56000.0),
    ('8', N'Employee 8', N'505 Employee St', '1987-06-18', N'Job 8', 53000.0),
    ('9', N'Employee 9', N'606 Employee St', '1997-09-03', N'Job 9', 59000.0),
    ('10', N'Employee 10', N'707 Employee St', '1991-12-28', N'Job 10', 57000.0);

-- Chèn dữ liệu vào bảng cart:
INSERT INTO cart (cartid, scid, productno, quantity, price)
VALUES
    (1, 1, '1', 5, 10.99),
    (2, 1, '2', 2, 15.99),
    (3, 2, '3', 3, 5.99),
    (4, 2, '4', 4, 12.49),
    (5, 3, '5', 1, 8.99),
    (6, 3, '6', 2, 7.99),
    (7, 4, '7', 3, 9.99),
    (8, 4, '8', 2, 11.99),
    (9, 5, '9', 5, 6.49),
    (10, 5, '10', 2, 13.99);

-- chèn dữ liệu vào bảng usual_question:
INSERT INTO usual_questions (id, question, answer)
VALUES
    (1, N'What is your favorite color?', N'My favorite color is blue.'),
    (2, N'What is your favorite food?', N'I love pizza and sushi.'),
    (3, N'Where do you like to travel?', N'I enjoy traveling to tropical destinations.'),
    (4, N'What is your hobby?', N'My hobby is playing the guitar.'),
    (5, N'What is your favorite book?', N'My favorite book is ''To Kill a Mockingbird.'''),
    (6, N'What is your dream job?', N'My dream job is to be a professional photographer.'),
    (7, N'What is your favorite movie?', N'I love ''The Shawshank Redemption.'''),
    (8, N'What is your favorite music genre?', N'I enjoy listening to rock music.'),
    (9, N'What is your favorite sport?', N'I''m a fan of soccer.'),
    (10, N'What is your favorite animal?', N'My favorite animal is the dolphin.');

-- Chèn dữ liệu vào bảng feedback:
INSERT INTO feedback (feedbackid, userid, productno, score, comment)
VALUES
    (1, '1', '1', 4, N'Great product!'),
    (2, '2', '2', 5, N'Excellent quality.'),
    (3, '3', '3', 3, N'Could be better.'),
    (4, '4', '4', 4, N'Good value for the price.'),
    (5, '5', '5', 5, N'Love it!'),
    (6, '6', '6', 2, N'Disappointed with the product.'),
    (7, '7', '7', 4, N'Would recommend to others.'),
    (8, '8', '8', 5, N'Outstanding!'),
    (9, '9', '9', 3, N'Average quality.'),
    (10, '10', '10', 4, N'Nice product for the cost.');




