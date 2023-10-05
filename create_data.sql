USE ver4
DELETE FROM account;

INSERT INTO account (accname, accrole, accpassword) VALUES
('duy1', 'employee', 'password1'),
('phuong2', 'employee', 'password2'),
('han3', 'employee', 'password3'),
('quynh4', 'employee', 'password4'),
('long5', 'employee', 'password5'),
('duy6', 'customer', 'password6'),
('han7', 'customer', 'password7'),
('quynh8', 'customer', 'password8'),
('long9', 'customer', 'passworzd9'),
('duy10', 'customer', 'password10'),
('phuong11', 'customer', 'password11'),
('han12', 'customer', 'password12'),
('quynh13', 'customer', 'password13'),
('long14', 'customer', 'password14'),
('duy15', 'customer', 'password15'),
('phuong16', 'customer', 'password16'),
('phuong17', 'customer', 'password17'),
('phuong18', 'customer', 'password18'),
('phuong19', 'customer', 'password19'),
('phuong20', 'customer', 'password20'),
('phuong21', 'customer', 'password21'),
('phuong22', 'customer', 'password22'),
('phuong23', 'customer', 'password23'),
('phuong24', 'customer', 'password24'),
('phuong25', 'customer', 'password25'),
('han26', 'admin', 'password26'),
('khang27', 'admin', 'password27'),
('ngoc28', 'admin', 'password28');

INSERT INTO customer(cusid, accname, cusname, cusaddrress, cusphone, cusmail) VALUES
('CUS001','duy6', 'duy', 'TPHCM', '098111111', 'customer1@example.com'),
('CUS002','han7', 'han', 'TPHCM', '098111112', 'customer2@example.com'),
('CUS003','quynh8', 'quynh', 'TPHCM', '098111113', 'customer3@example.com'),
('CUS004','long9', 'long', 'TPHCM', '098111114', 'customer4@example.com'),
('CUS005','duy10', 'duy', 'TPHCM', '098111115', 'customer5@example.com'),
('CUS006','phuong11', 'phuong', 'Ha Noi', '098111116', 'customer6@example.com'),
('CUS007','han12', 'han', 'Ha Noi', '098111117', 'customer7@example.com'),
('CUS008','quynh13', 'quynh', 'Ha Noi', '098111118', 'customer8@example.com'),
('CUS009','long14', 'long', 'Ha Noi', '098111119', 'customer9@example.com'),
('CUS010','duy15', 'duy', 'Da Nang', '098111120', 'customer10@example.com'),
('CUS011','phuong16', 'phuong', 'Da Nang', '098111121', 'customer11@example.com'),
('CUS012','phuong17', 'phuong', 'Da Nang', '098111122', 'customer12@example.com'),
('CUS013','phuong18', 'phuong', 'Da Nang', '098111123', 'customer13@example.com'),
('CUS014','phuong19', 'phuong', 'Da Nang', '098111124', 'customer14@example.com'),
('CUS015','phuong20', 'phuong', 'Tien Giang', '098111125', 'customer15@example.com'),
('CUS016','phuong21', 'phuong', 'Tien Giang', '098111126', 'customer16@example.com'),
('CUS017','phuong22', 'phuong', 'Tien Giang', '098111127', 'customer17@example.com'),
('CUS018','phuong23', 'phuong', 'Tien Giang', '098111128', 'customer18@example.com'),
('CUS019','phuong24', 'phuong', 'Tien Giang', '098111129', 'customer19@example.com'),
('CUS020','phuong25', 'phuong', 'Tien Giang', '098111130', 'customer20@example.com');


INSERT INTO employee (empid, accname, empname, empaddress, empphone, empdob, empjob, empsalary) VALUES
('EMP001', 'duy1', N'Duy', N'Gò Vấp', '1234567890', '1990-05-15', N'Nhân viên bán hàng', 5000000),
('EMP002', 'phuong2', N'Phương', N'Bình Thạnh', '2345678901', '1985-08-20', N'Nhân viên bán hàng', 4200000),
('EMP003', 'han3', N'Hân', N'Quận 7', '3456789012', '1992-03-10', N'Nhân viên bán hàng', 5500000),
('EMP004', 'quynh4', N'Quỳnh', N'Quận Bình Tân', '4567890123', '1988-11-30', N'Nhân viên thủ kho', 6500000),
('EMP005', 'long5', N'Long', N'Tân Bình', '5678901234', '1995-06-25', N'Nhân viên giao hàng', 4800000);

INSERT INTO admin (adid, accname, adname, adphone) VALUES
('AD001', 'han26', N'Ngọc Hân', '1234567890'),
('AD002', 'khang27', N'Nguyễn Khang', '2345678901'),
('AD003', 'ngoc28', N'Kim Ngọc', '3456789012');

INSERT INTO provider (pvdno, pvdname, pvdaddress, pvdphone) VALUES
('PVD001', N'NXB Nhã Nam', N'Bình Thạnh', '1234567890'),
('PVD002', N'NXB Kim Đồng', N'Quận 2', '2345678901'),
('PVD003', N'NXB Sài Gòn', N'Quận 9', '3456789012'),
('PVD004', N'NXB Thiếu Nhi', N'Tân Bình', '4567890123'),
('PVD005', N'NXB Hải Đăng', N'Quận 4', '5678901234');

INSERT INTO type (typeno, typename, owntype) VALUES
('T001', N'Người lớn', NULL), -- Loại gốc không có "owntype"
('T002', N'Kinh dị', 'T001'), -- Loại con của 'T001'
('T003', N'Trinh thám', 'T001'), -- Loại con của 'T001'
('T004', N'Ma', 'T002'), -- Loại con của 'T002'
('T005', N'18+', NULL); -- Loại gốc không có "owntype"


INSERT INTO product (pdtno, pdtname, typeno, pvdno, quantityinstore, cost, description, pdtstate) VALUES
('PDT001', N'Đăc Nhân Tâm', 'T001', 'PVD001', 100, 50000, N'Đây là cuốn sách hay nhất thế giới', N'Đang bán'),
('PDT002', N'Bá tước Monte Cristo', 'T002', 'PVD002', 75, 40000, N'Đây là cuốn tiểu thuyết kinh điển hay nhất thế giới', N'Đang bán'),
('PDT003', N'Hai đứa trẻ', 'T002', 'PVD003', 60, 35000, N'Tiếu thuyết dỡ vãi lồn', N'Hết hàng'),
('PDT004', N'Người trong muôn nghề', 'T003', 'PVD001', 120, 60000, N'Cuốn sách hướng nghiệp hay nhất việt nam', N'Đang bán'),
('PDT005', N'Bạch dạ hành', 'T004', 'PVD004', 90, 55000, N'Đây là cuốn kinh dị hay nhất nhật bản', N'Đang bán'),
('PDT006', N'Cây cam ngọt', 'T001', 'PVD002', 80, 45000, N'Đây là cuốn sách nói về 2 cây cam', N'Đang bán'),
('PDT007', N'Những Cuộc Phiêu Lưu Của Alice Trong Xứ Sở Thần Tiên', 'T001', 'PVD003', 95, 55000, N'Đây là cuốn tiểu thuyết cho trẻ em hay nhất thế giới', N'Đang bán'),
('PDT008', N'Bạch tuyết và 7 chú lùn', 'T002', 'PVD004', 110, 65000, N'sách hay nhất cho trẻ em', N'Đang bán'),
('PDT009', N'Nghi can X', 'T002', 'PVD001', 70, 38000, N'Đây là cuốn trinh thám hay nhất thế giới', N'Hết hàng'),
('PDT010', N'Điều kỳ diệu ở tạp hóa Namiya', 'T003', 'PVD002', 85, 48000, N'Đây là cuốn tiểu thuyết về du hành thời gian hay nhất nhật bản', N'Đang bán'),
('PDT011', N'Sơn Tinh Thủy tinh', 'T003', 'PVD003', 105, 60000, N'Đây là truyện cổ tích hay nhất việt nam', N'Đang bán'),
('PDT012', N'Sọ dừa', 'T004', 'PVD004', 125, 70000, N'Đây là truyện xàm nhất việt nam', N'Đang bán'),
('PDT013', N'Doraemon', 'T004', 'PVD001', 55, 30000, N'Truyện tranh thiếu nhi hay nhất nhật bản', N'Đang bán'),
('PDT014', N'Conan', 'T001', 'PVD002', 75, 42000, N'Truyện trinh thám hay nhất cho thiếu nhi', N'Đang bán'),
('PDT015', N'sherlock holmes', 'T001', 'PVD003', 90, 52000, N'Truyện trinh thám hay nhất nước anh', N'Đang bán'),
('PDT016', N'Hạnh phúc đến từ đâu', 'T002', 'PVD004', 115, 58000, N'No desrcription', N'Đang bán'),
('PDT017', N'Sơ đồ tư duy', 'T002', 'PVD001', 65, 36000, N'Cuốn sách về não bộ hay nhất thế giới', N'Đang bán'),
('PDT018', N'BrainStoming', 'T003', 'PVD002', 80, 46000, N'No description', N'Đang bán'),
('PDT019', N'Hand on Machine Learning', 'T003', 'PVD003', 100, 54000, N'Sách về Machine Learning chuyên gia khuyên học', N'Đang bán'),
('PDT020', N'Computer vision', 'T004', 'PVD004', 120, 68000, N'Sách về Deep Learning', N'Đang bán');


INSERT INTO bill (billno, empid, billdate, billtotal, cusid, recepname, recepaddress, recepphone, note, status) VALUES
('BILL001', 'EMP001', '2023-10-01 09:30:00', 250000, 'CUS001', null, null, '1234567890', null, N'Đã thanh toán'),
('BILL002', 'EMP002', '2023-10-02 14:45:00', 180000, 'CUS002', null, null, '2345678901', null, N'Chưa thanh toán'),
('BILL003', 'EMP003', '2023-10-03 11:15:00', 320000, 'CUS003', null,null, '3456789012', null, N'Đã thanh toán'),
('BILL004', 'EMP004', '2023-10-04 17:20:00', 150000, 'CUS004', null, null, '4567890123', null, N'Chưa thanh toán'),
('BILL005', 'EMP005', '2023-10-05 10:10:00', 200000, 'CUS005', null, null, '5678901234', null, N'Đã thanh toán'),
('BILL006', 'EMP005', '2023-10-05 13:10:00', 200000, 'CUS005', null, null, '5678901234', null, N'Đã thanh toán'),
('BILL007', 'EMP001', '2023-10-05 10:20:00', 200000, 'CUS005', N'Đặng thị Thu Hương', N'Nha Trang', '5678901234', N'hàng dễ vỡ', N'Đã thanh toán'),
('BILL008', 'EMP005', '2023-10-05 10:15:00', 200000, 'CUS005', N'Rái Cá quận 2', N'Cần Thơ', '5678901234', N'Shipper đẹp trai', N'Đã thanh toán'),
('BILL009', 'EMP002', '2023-10-05 11:10:00', 200000, 'CUS005', N'Lê Phát Đạt', N'Bình Tân', '5678901234', N'nhận trước 7h ngày 29/9', N'Đã thanh toán'),
('BILL0010', 'EMP003', '2023-10-05 12:12:00', 200000, 'CUS005', N'Phạm Hoàng Long', N'Hải Phòng', '5678901234', N'Không kiểm trước', N'Đã thanh toán'),
('BILL0011', 'EMP005', '2023-10-05 13:18:00', 200000, 'CUS005', N'Thủy Tiên', N'Khánh Hòa', '5678901234', N'Không đọc tên hàng', N'Đã thanh toán');


INSERT INTO detailbill (billno, pdtno, quantity, price) VALUES
('BILL001', 'PDT001', 2, 100.0),
('BILL001', 'PDT002', 3, 120.0),
('BILL002', 'PDT003', 1, 45.0),
('BILL002', 'PDT004', 2, 120.0),
('BILL003', 'PDT005', 4, 220.0),
('BILL004', 'PDT001', 1, 50.0),
('BILL004', 'PDT002', 2, 90.0),
('BILL005', 'PDT003', 3, 135.0),
('BILL005', 'PDT004', 1, 60.0);

INSERT INTO cart (cartid, cusid) VALUES
(1, 'CUS001'),
(2, 'CUS002'),
(3, 'CUS003'),
(4, 'CUS004'),
(5, 'CUS005');

INSERT INTO detailcart (cartid, pdtno, quantity, price) VALUES
(1, 'PDT001', 2, 100.0),
(1, 'PDT002', 3, 120.0),
(2, 'PDT003', 1, 45.0),
(2, 'PDT004', 2, 120.0),
(3, 'PDT005', 4, 220.0),
(4, 'PDT001', 1, 50.0),
(4, 'PDT002', 2, 90.0),
(5, 'PDT003', 3, 135.0),
(5, 'PDT004', 1, 60.0);

INSERT INTO usual_questions (id, adid, question, answer) VALUES
(1, 'AD001', N' Làm thế nào để đặt hàng trực tuyến?', N' Để đặt hàng trực tuyến, bạn chỉ cần truy cập trang web của chúng tôi, chọn sản phẩm bạn muốn mua, thêm vào giỏ hàng, và tiến hành thanh toán.'),
(2, 'AD002', N'Bạn có chương trình khuyến mãi không?', N' Chúng tôi thường có các chương trình khuyến mãi đặc biệt vào các dịp lễ, hãy kiểm tra trang web của chúng tôi hoặc liên hệ với chúng tôi để biết thêm chi tiết.'),
(3, 'AD003', N' Làm thế nào để theo dõi đơn hàng của tôi?', N'Bạn có thể theo dõi đơn hàng của mình bằng cách đăng nhập vào tài khoản của bạn trên trang web của chúng tôi và truy cập vào trang "Theo dõi đơn hàng".'),
(4, 'AD004', N' Làm thế nào để đổi/trả sản phẩm?', N' Để đổi hoặc trả sản phẩm, vui lòng liên hệ với bộ phận dịch vụ khách hàng của chúng tôi qua số điện thoại hoặc email để được hỗ trợ.'),
(5, 'AD005', N'Bạn có cửa hàng vật lý không?', N'Chúng tôi chỉ hoạt động trực tuyến và không có cửa hàng vật lý. Tuy nhiên, bạn có thể mua sản phẩm của chúng tôi trực tuyến và chúng sẽ được giao đến địa chỉ của bạn.');

INSERT INTO feedback (feedbackid, cusid, pdtno, score, comment) VALUES
(1, 'CUS001', 'PDT001', 4, N'Sản phẩm rất tốt, tôi rất hài lòng.'),
(2, 'CUS002', 'PDT002', 5, N'Sản phẩm chất lượng cao, giá thành hợp lý.'),
(3, 'CUS003', 'PDT003', 3, N'Sản phẩm tạm ổn, nhưng cần cải thiện một chút.'),
(4, 'CUS004', 'PDT004', 4, N'Tôi thích sản phẩm này, nhưng giá có vẻ cao.'),
(5, 'CUS005', 'PDT001', 5, N'Sản phẩm tuyệt vời, tôi đã mua nhiều lần.');




