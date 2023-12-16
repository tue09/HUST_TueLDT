-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Truy van co ban
-- 1. Cho biết thông tin(mã cầu thủ, họ tên, số áo, vị trí,
-- ngày sinh, địa chỉ) của tất cả các cầu thủ

use QLBongDa_TueLDT_865 -- mở CSDL Quản lý bóng đá
select MACT_0909, HOTEN_0909, SO_0909, VITRI_0909, NGAYSINH_0909, DIACHI_0909
-- Lựa chọn các cột theo yêu cầu
from CAUTHU_TueLDT --  từ bảng cầu thủ

/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Truy van co ban
-- 2. Hiện thị thông tin tất cả các cầu thủ có số áo là 7 chơi ở
-- vị trí tiền vệ

use QLBongDa_TueLDT_865
select * -- Lựa chọn các cột theo yêu cầu
from CAUTHU_TueLDT -- từ bảng cầu thủ 
where SO_0909 = 7 -- lựa chọn cầu thủ có áo số 7
	and VITRI_0909 Like N'Tiền vệ' -- chơi ở vị trí tiền vệ

/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Truy van co ban
-- 3. Cho biết tên, ngày sinh, địa chỉ, điện thoại của tất cả 
-- các huyến luyện viên 

select TENHLV_0909, NGAYSINH_0909, DIACHI_0909, DIENTHOAI_0909
-- Lựa chọn các cột theo yêu cầu
from HUANLUYENVIEN_TueLDT -- từ bảng Huấn Luyện Viên

/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Truy van co ban
-- 4. Hiện thị thông tin tất cả các cầu thủ có quốc tịch Việt Nam 
-- thuộc câu lạc bộ Becamex Bình Dương

select CAUTHU_TueLDT.*
from CAUTHU_TueLDT -- Lựa chọn các cột theo yêu cầu
JOIN QUOCGIA_TueLDT on QUOCGIA_TueLDT.MAQG_0909 = CAUTHU_TueLDT.MAQG_0909
-- Join Bảng Quốc Gia
JOIN CAULACBO_TueLDT on CAULACBO_TueLDT.MACLB_0909 = CAUTHU_TueLDT.MACLB_0909
-- Join Bảng Câu Lạc Bộ
where QUOCGIA_TueLDT.TENQG_0909 = N'Việt Nam' -- Có tên Quốc Gia là Việt Nam
	and CAULACBO_TueLDT.TENCLB_0909 = N'BECAMEX Bình Duong'
	-- Có Câu Lạc Bộ là Becamex Bình Dương'

/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Truy van co ban
-- 5. Cho biết mã số, họ tên, ngày sinh, địa chỉ và vị trí 
-- của cầu thủ thuộc đội bóng 'SHB Đà Nẵng' có quốc tịch 'Bra-xin'
select CAUTHU_TueLDT.*
from CAUTHU_TueLDT -- Lựa chọn các cột theo yêu cầu
JOIN QUOCGIA_TueLDT on QUOCGIA_TueLDT.MAQG_0909 = CAUTHU_TueLDT.MAQG_0909
-- Join Bảng Quốc Gia
JOIN CAULACBO_TueLDT on CAULACBO_TueLDT.MACLB_0909 = CAUTHU_TueLDT.MACLB_0909
-- Join Bảng Câu Lạc Bộ
where CAULACBO_TueLDT.TENCLB_0909 = N'SHB ÐÀ NẴNG' -- Có Câu Lạc Bộ là Becamex Bình Dương'
	and QUOCGIA_TueLDT.TENQG_0909 = N'BRA-XIN'
	-- Có tên Quốc Gia là Bra-Xin

/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Truy van co ban
-- 6. Hiển thị thông tin tất cả các cầu thủ đang thi đấu trong câu lạc bộ
-- có sân nhà là Long An

select CAUTHU_TueLDT.*
from CAUTHU_TueLDT -- Lựa chọn các cột theo yêu cầu
JOIN CAULACBO_TueLDT on CAULACBO_TueLDT.MACLB_0909 = CAUTHU_TueLDT.MACLB_0909
-- Join Bảng Câu Lạc Bộ
JOIN SANVD_TueLDT on SANVD_TueLDT.MASAN_0909 = CAULACBO_TueLDT.MASAN_0909
-- Join Bảng Sân Vân Động
WHERE SANVD_TueLDT.TENSAN_0909 = N'Long An'

/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Truy van co ban
-- 7. Cho biết kết quả (MATRAN, NGAYTD, TENSAN, TENCLB1,
-- TENCLB2, KETQUA) các trận đấu vòng 2 của mùa bóng 2009

Select TRANDAU_TueLDT.MATRAN_0909, TRANDAU_TueLDT.NGAYTD_0909,
	SANVD_TueLDT.TENSAN_0909, c1.TENCLB_0909 AS TENCLB1, c2.TENCLB_0909 AS TENCLB2, 
	TRANDAU_TueLDT.KETQUA_0909
-- Lựa chọn các cột theo yêu cầu 
From TRANDAU_TueLDT
JOIN SANVD_TueLDT ON SANVD_TueLDT.MASAN_0909 = TRANDAU_TueLDT.MASAN_0909
-- Join Bảng Sân Vân Động
JOIN CAULACBO_TueLDT c1 ON c1.MACLB_0909 = TRANDAU_TueLDT.MACLB1_0909
JOIN CAULACBO_TueLDT c2 ON c2.MACLB_0909 = TRANDAU_TueLDT.MACLB2_0909
-- Join Bảng Câu Lạc Bộ
WHERE VONG_0909 = 2 -- Vòng là 2
	AND NAM_0909 = 2009 -- Mùa bóng năm 2009

/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Truy van co ban
-- 8. Cho biết mã huấn luyện viên, họ tên, ngày sinh, địa chỉ, vai trò
-- và tên CLB đang làm việc của các huấn luyện viên có quốc tịch 'Việt Nam'

Select HUANLUYENVIEN_TueLDT.MAHLV_0909, HUANLUYENVIEN_TueLDT.TENHLV_0909,
	HUANLUYENVIEN_TueLDT.NGAYSINH_0909, HUANLUYENVIEN_TueLDT.DIACHI_0909,
	HLV_CLB_TueLDT.VAITRO_0909, CAULACBO_TueLDT.TENCLB_0909
-- Lựa chọn các cột theo yêu cầu
From HUANLUYENVIEN_TueLDT -- Từ bảng Huấn Luyện Viên
JOIN QUOCGIA_TueLDT ON QUOCGIA_TueLDT.MAQG_0909 = HUANLUYENVIEN_TueLDT.MAQG_0909
-- Join bảng Quốc Gia
JOIN HLV_CLB_TueLDT ON HLV_CLB_TueLDT.MAHLV_0909 = HUANLUYENVIEN_TueLDT.MAHLV_0909
-- Join bảng Huấn Luyện Viên Câu Lạc Bộ
JOIN CAULACBO_TueLDT ON CAULACBO_TueLDT.MACLB_0909 = HLV_CLB_TueLDT.MACLB_0909
-- Join bảng Câu Lạc Bộ
WHERE QUOCGIA_TueLDT.TENQG_0909 = N'Việt Nam' -- Quốc tịch là Việt Nam

/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Truy van co ban
-- 9. Lấy tên 3 câu lạc bộ có điểm cao nhất sau vòng 3 năm 2009

Select TOP 3 CAULACBO_TueLDT.TENCLB_0909 -- Lựa chọn cột chứa tên Câu Lạc Bộ
From BANGXH_TueLDT -- Từ bảng Bảng Xếp Hạng
JOIN CAULACBO_TueLDT ON CAULACBO_TueLDT.MACLB_0909 = BANGXH_TueLDT.MACLB_0909
-- Join Bảng Câu Lạc Bộ
WHERE VONG_0909 = 3 -- Vòng 3
ORDER BY DIEM_0909 DESC -- Sắp xếp theo thứ tự giảm dần

/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Truy van co ban
-- 10. Cho biết mã huấn luyện viên, họ tên, ngày sinh, địa chỉ, 
-- vai trò và tên CLB đang làm việc mà câu lạc bộ đó đóng ở tỉnh Bình Dương

Select HUANLUYENVIEN_TueLDT.MAHLV_0909, HUANLUYENVIEN_TueLDT.TENHLV_0909,
	HUANLUYENVIEN_TueLDT.NGAYSINH_0909, HUANLUYENVIEN_TueLDT.DIACHI_0909,
	HLV_CLB_TueLDT.VAITRO_0909, CAULACBO_TueLDT.TENCLB_0909
-- Lựa chọn những cột theo yêu cầu
From HUANLUYENVIEN_TueLDT
-- Từ bảng Huấn Luyện Viên
JOIN HLV_CLB_TueLDT ON HLV_CLB_TueLDT.MAHLV_0909 = HUANLUYENVIEN_TueLDT.MAHLV_0909
-- Join bảng Huấn Luyện Viên Câu Lạc Bộ
JOIN CAULACBO_TueLDT ON CAULACBO_TueLDT.MACLB_0909 = HLV_CLB_TueLDT.MACLB_0909
-- Join bảng Câu Lạc Bộ
JOIN TINH_TueLDT ON TINH_TueLDT.MATINH_0909 = CAULACBO_TueLDT.MATINH_0909
-- Join bảng Tỉnh
WHERE TINH_TueLDT.TENTINH_0909 = N'Bình Dương' -- Có tên tỉnh là Bình Dương


/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Các phép toán trên nhóm
-- 1. Thống kê số lượng cầu thủ của mỗi câu lạc bộ

Select MACLB_0909, COUNT(*) AS VALUE -- Lựa chọn cột Mã CLB 
-- và cột đếm số lượng cầu thủ mỗi câu lạc bộ đặt tên là VALUE
from CAUTHU_TueLDT -- Từ bảng Cầu Thủ
GROUP BY MACLB_0909 -- GROUP theo Mã CLB

/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Các phép toán trên nhóm
-- 2. Thống kê số lượng cầu thủ nước ngoài (có quốc tịch khác Việt Nam) của mỗi câu lạc bộ
Select MACLB_0909, COUNT(*) AS VALUE -- Lựa chọn cột Mã CLB 
-- và cột đếm số lượng cầu thủ mỗi câu lạc bộ đặt tên là VALUE
from CAUTHU_TueLDT -- Từ bảng Cầu Thủ
JOIN QUOCGIA_TueLDT ON QUOCGIA_TueLDT.MAQG_0909 = CAUTHU_TueLDT.MAQG_0909
-- JOIN bảng Quốc Gia
WHERE QUOCGIA_TueLDT.TENQG_0909 <> N'Việt Nam'
-- Có quốc tịch khác Việt Nam
GROUP BY MACLB_0909 -- GROUP theo Mã CLB


/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Các phép toán trên nhóm
-- 3. Cho biết mã câu lạc bộ, tên câu lạc bộ, tên sân vận động, địa chỉ và số lượng cầu thủ
-- nước ngoài (có quốc tịch khác Việt Nam) tương ứng của các câu lạc bộ có nhiều hơn 
-- 2 cầu thủ nước ngoài.
Select CAUTHU_TueLDT.MACLB_0909, CAULACBO_TueLDT.TENCLB_0909, 
	SANVD_TueLDT.TENSAN_0909, SANVD_TueLDT.DIACHI_0909, COUNT(*) AS VALUE 
-- Lựa chọn cột Mã CLB, Tên CLB, Tên SVD, Địa chỉ SVD
-- và cột đếm số lượng cầu thủ mỗi câu lạc bộ đặt tên là VALUE
from CAUTHU_TueLDT -- Từ bảng Cầu Thủ
JOIN QUOCGIA_TueLDT ON QUOCGIA_TueLDT.MAQG_0909 = CAUTHU_TueLDT.MAQG_0909 
	AND QUOCGIA_TueLDT.TENQG_0909 <> N'Việt Nam'
-- JOIN bảng Quốc Gia và Có quốc tịch khác Việt Nam
JOIN CAULACBO_TueLDT ON CAULACBO_TueLDT.MACLB_0909 = CAUTHU_TueLDT.MACLB_0909
-- JOIN bảng Câu Lạc Bộ
JOIN SANVD_TueLDT ON SANVD_TueLDT.MASAN_0909 = CAULACBO_TueLDT.MASAN_0909
-- JOIN bảng Sân Vân Động
GROUP BY CAUTHU_TueLDT.MACLB_0909, CAULACBO_TueLDT.TENCLB_0909, 
	SANVD_TueLDT.TENSAN_0909, SANVD_TueLDT.DIACHI_0909 
-- GROUP theo Mã CLB
HAVING COUNT(*) > 2 -- Có số cầu thủ nước ngoài > 2

/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Các phép toán trên nhóm
-- 4. Cho biết tên tỉnh, số lượng cầu thủ đang thi đấu ở vị trí tiền đạo trong các câu lạc 
-- bộ thuộc địa bàn tỉnh đó quản lýselect TINH_TueLDT.TENTINH_0909, COUNT(*) AS VALUE-- Lựa chọn cột Tên Tỉnh và cột đếm số lượng cầu thủ trong tỉnh đặt tên là VALUEfrom TINH_TueLDT-- từ bảng TỉnhJOIN CAULACBO_TueLDT ON CAULACBO_TueLDT.MATINH_0909 = TINH_TueLDT.MATINH_0909 -- Join bảng Câu Lạc BộJOIN CAUTHU_TueLDT ON CAUTHU_TueLDT.MACLB_0909 = CAULACBO_TueLDT.MACLB_0909 	AND CAUTHU_TueLDT.VITRI_0909 = N'Tiền đạo'-- Join bảng Cầu Thủ và thỏa mãn điều kiện cầu thủ đó chơi ở vị trí Tiền ĐạoGROUP BY TINH_TueLDT.MATINH_0909, TINH_TueLDT.TENTINH_0909-- Group theo Mã Tỉnh/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Các phép toán trên nhóm
-- 5. Cho biết tên câu lạc bộ, tên tỉnh mà CLB đang đóng nằm ở vị trí cao nhất của bảng 
-- xếp hạng vòng 3, năm 2009Select TOP 1 CAULACBO_TueLDT.TENCLB_0909, TINH_TueLDT.TENTINH_0909 -- Lựa chọn cột chứa tên Câu Lạc Bộ, Tên tỉnhfrom BANGXH_TueLDT-- Từ bảng Bảng Xếp HạngJOIN CAULACBO_TueLDT ON CAULACBO_TueLDT.MACLB_0909 = BANGXH_TueLDT.MACLB_0909-- Join bảng Câu Lạc BộJOIN TINH_TueLDT ON TINH_TueLDT.MATINH_0909 = CAULACBO_TueLDT.MATINH_0909-- Join Bảng TỉnhWHERE VONG_0909 = 3 -- Vòng 3ORDER BY DIEM_0909 DESC -- Sắp xếp theo thứ tự giảm dần/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- c. Các toán tử nâng cao
-- 1. Cho biết tên huấn luyện viên đang nắm giữ một vị trí trong một câu lạc bộ mà 
-- chưa có số điện thoạiSelect HUANLUYENVIEN_TueLDT.TENHLV_0909-- Lựa chọn cột tên Huấn Luyện ViênFROM HUANLUYENVIEN_TueLDT -- Từ bảng Huấn Luyện ViênJOIN HLV_CLB_TueLDT ON HLV_CLB_TueLDT.MAHLV_0909 = HUANLUYENVIEN_TueLDT.MAHLV_0909-- Join bảng HLV_CLB để lọc những huấn luyện viên đang nắm giữ một vị trí trong một câu lạc bộWHERE HUANLUYENVIEN_TueLDT.DIENTHOAI_0909 IS NULL -- Chưa có số Điện Thoại/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- c. Các toán tử nâng cao
-- 2. Liệt kê các huấn luyện viên thuộc quốc gia Việt Nam chưa làm công tác huấn luyện 
-- tại bất kỳ một câu lạc bộ nàoSelect * -- Liệt kê tất cẩ các cộtfrom HUANLUYENVIEN_TueLDT-- Từ bảng Huấn Luyện Viênleft join HLV_CLB_TueLDT ON HUANLUYENVIEN_TueLDT.MAHLV_0909 = HLV_CLB_TueLDT.MAHLV_0909  -- Left Join với bảng HLV_CLB JOIN QUOCGIA_TueLDT ON QUOCGIA_TueLDT.MAQG_0909 = HUANLUYENVIEN_TueLDT.MAQG_0909 -- JOIN bảng Quốc Gia để WHERE HLV_CLB_TueLDT.MAHLV_0909 IS NULL 
   AND QUOCGIA_TueLDT.TENQG_0909 = N'Việt Nam';-- lọc ra những huấn luyện viên chưa huấn luyện tại bất kỳ câu lạc bộ nào và có quốc tịch Việt Nam/******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- c. Các toán tử nâng cao
-- 3. Liệt kê các cầu thủ đang thi đấu trong các câu lạc bộ có thứ hạng ở vòng 3 năm 2009 
-- lớn hơn 6 hoặc nhỏ hơn 3 select CAUTHU_TueLDT.* -- Liệt kê thông tin về cầu thủ from CAUTHU_TueLDT -- Từ bảng Cầu Thủ JOIN BANGXH_TueLDT ON CAUTHU_TueLDT.MACLB_0909 = BANGXH_TueLDT.MACLB_0909 -- Join bảng BXH -- where VONG_0909 = 3 AND (HANG_0909 > 6 OR HANG_0909 < 3) -- Trường hợp Xét theo số của số hạng where VONG_0909 = 3 AND (HANG_0909 < 6 OR HANG_0909 > 3) -- Trường hợp xét theo thứ tự thực tế /******************************************************/
-- Bai thuc hanh so 2 - Tuan 10
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- c. Các toán tử nâng cao
-- 4. Cho biết danh sách các trận đấu (NGAYTD, TENSAN, TENCLB1, TENCLB2, KETQUA) 
-- của câu lạc bộ (CLB) đang xếp hạng cao nhất tính đến hết vòng 3 năm 2009 select TRANDAU_TueLDT.NGAYTD_0909, SANVD_TueLDT.TENSAN_0909, c1.TENCLB_0909 AS TENCLB1, 	c2.TENCLB_0909 AS TENCLB2-- Lựa chọn những cột theo yêu cầu đề bàifrom BANGXH_TueLDT -- Từ cột bảng Xếp HạngJOIN TRANDAU_TueLDT ON TRANDAU_TueLDT.MACLB1_0909 = BANGXH_TueLDT.MACLB_0909 	OR TRANDAU_TueLDT.MACLB2_0909 = BANGXH_TueLDT.MACLB_0909-- Join Bảng Trận ĐấuJOIN SANVD_TueLDT ON SANVD_TueLDT.MASAN_0909 = TRANDAU_TueLDT.MASAN_0909-- Join Bảng Sân Vận ĐộngJOIN CAULACBO_TueLDT c1 ON c1.MACLB_0909 = TRANDAU_TueLDT.MACLB1_0909
JOIN CAULACBO_TueLDT c2 ON c2.MACLB_0909 = TRANDAU_TueLDT.MACLB2_0909-- Join bảng Câu Lạc Bộ 2 lần để lấy tên 2 CLBWhere BANGXH_TueLDT.VONG_0909 = 3 AND BANGXH_TueLDT.HANG_0909 = 1-- Lọc với điều kiện Là câu lạc bộ đứng thứ 1 sau vòng 3















