-- Bai thuc hanh so 3 - Tuan 13
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Xử lý chuỗi, ngày, giờ
-- 1. Cho biết NGAYTD, TENCLB1, TENCLB2, KETQUA các trận đấu diễn ra 
-- vào tháng 3 trên sân nhà mà không bị thủng lưới.

use QLBongDa_TueLDT_865 -- mở CSDL Quản lý bóng đá
select TRANDAU_TueLDT.NGAYTD_0909, CLB1.TENCLB_0909, CLB2.TENCLB_0909, TRANDAU_TueLDT.KETQUA_0909 from TRANDAU_TueLDT 
-- Lựa chọn các cột theo yêu cầu đề bài
Join CAULACBO_TueLDT AS CLB1 ON CLB1.MACLB_0909 = TRANDAU_TueLDT.MACLB1_0909
-- Join bảng CLB
Join CAULACBO_TueLDT AS CLB2 ON CLB2.MACLB_0909 = TRANDAU_TueLDT.MACLB2_0909
-- Join bảng CLB
WHERE MONTH(TRANDAU_TueLDT.NGAYTD_0909) = 3 -- ở tháng 3
	AND (((CLB1.MASAN_0909 = TRANDAU_TueLDT.MASAN_0909) AND KETQUA_0909 LIKE '%-0')
	-- Nếu CLB1 là sân nhà thì khônh bị thủng lưới
	OR ((CLB2.MASAN_0909 = TRANDAU_TueLDT.MASAN_0909) AND KETQUA_0909 LIKE '0-%'))
	-- Nếu CLB2 là sân nhà thì không bị thủng lưới

/******************************************************/

-- Bai thuc hanh so 3 - Tuan 13
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Xử lý chuỗi, ngày, giờ
-- 2. Cho biết mã số, họ tên, ngày sinh của những cầu thủ có họ lót là “Công”

Select MACT_0909, HOTEN_0909, NGAYSINH_0909 from CAUTHU_TueLDT
-- Lựa chọn các cột theo yêu cầu
Where CAUTHU_TueLDT.HOTEN_0909 LIKE '% Công %'
-- Có họ lót là 'Công'
/******************************************************/

-- Bai thuc hanh so 3 - Tuan 13
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Xử lý chuỗi, ngày, giờ
-- 3. Cho biết mã số, họ tên, ngày sinh của những cầu thủ có họ không là “Nguyễn”

Select MACT_0909, HOTEN_0909, NGAYSINH_0909 from CAUTHU_TueLDT
-- Lựa chọn các cột theo yêu cầu
Where CAUTHU_TueLDT.HOTEN_0909 NOT LIKE N'Nguyễn %'
-- Có họ không là 'Nguyễn'
/******************************************************/

-- Bai thuc hanh so 3 - Tuan 13
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Xử lý chuỗi, ngày, giờ
-- 4. Cho biết mã huấn luyện viên, họ tên, ngày sinh, địa chỉ của những huấn luyện viên Việt 
-- Nam có tuổi nằm trong khoảng 20-50

Select MAHLV_0909, TENHLV_0909, NGAYSINH_0909, DIACHI_0909 from HUANLUYENVIEN_TueLDT
-- Lựa chọn các cột theo yêu cầu
JOIN QUOCGIA_TueLDT ON QUOCGIA_TueLDT.MAQG_0909 = HUANLUYENVIEN_TueLDT.MAQG_0909 AND QUOCGIA_TueLDT.TENQG_0909 = N'Việt Nam'
-- Join bảng Quốc Gia để có quốc tịch Việt Nam
WHERE (20 <= 2023 - YEAR(NGAYSINH_0909)) AND (2023 - YEAR(NGAYSINH_0909) <= 50)
-- Có độ tuổi nằm trong khoảng 20 đến 50
/******************************************************/

-- Bai thuc hanh so 3 - Tuan 13
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Xử lý chuỗi, ngày, giờ
-- 5. Cho biết tên câu lạc bộ có huấn luyện viên trưởng sinh vào ngày 20 tháng 5

Select CAULACBO_TueLDT.TENCLB_0909 from HUANLUYENVIEN_TueLDT
-- Lựa chọn các cột theo yêu cầu
JOIN HLV_CLB_TueLDT ON HLV_CLB_TueLDT.MAHLV_0909 = HUANLUYENVIEN_TueLDT.MAHLV_0909 AND HLV_CLB_TueLDT.VAITRO_0909 = N'HLV Chính'
-- Join bảng HLV_CLB để lấy những HLV chính
JOIN CAULACBO_TueLDT ON CAULACBO_TueLDT.MACLB_0909 = HLV_CLB_TueLDT.MACLB_0909
-- Join bảng CAULACBO
WHERE MONTH(HUANLUYENVIEN_TueLDT.NGAYSINH_0909) = 5 AND DAY(HUANLUYENVIEN_TueLDT.NGAYSINH_0909) = 20
-- Ngày sinh HLV là 20 tháng 5

/******************************************************/

-- Bai thuc hanh so 3 - Tuan 13
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Xử lý chuỗi, ngày, giờ
-- 6. Cho biết tên câu lạc bộ, tên tỉnh mà CLB đang đóng có số bàn thắng nhiều nhất tính đến 
-- hết vòng 3 năm 2009

Select TOP 1 -- Lấy CLB nhiều bàn thắng nhất
	CAULACBO_TueLDT.TENCLB_0909, TINH_TueLDT.TENTINH_0909 from CAULACBO_TueLDT
-- Lựa chọn những cột theo yêu cầu
JOIN TINH_TueLDT ON TINH_TueLDT.MATINH_0909 = CAULACBO_TueLDT.MATINH_0909
-- Join bảng Tính
JOIN BANGXH_TueLDT ON BANGXH_TueLDT.MACLB_0909 = CAULACBO_TueLDT.MACLB_0909 AND BANGXH_TueLDT.VONG_0909 = 3
-- Join bảng BXH
ORDER BY LEFT(BANGXH_TueLDT.HIEUSO_0909, CHARINDEX('-', BANGXH_TueLDT.HIEUSO_0909) - 1) DESC
-- Sắp xếp theo hiệu số

/******************************************************/

-- Bai thuc hanh so 3 - Tuan 13
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Truy vấn con
-- 1. Cho biết mã câu lạc bộ, tên câu lạc bộ, tên sân vận động, địa chỉ và số lượng cầu thủ nước 
-- ngoài (Có quốc tịch khác “Việt Nam”) tương ứng của các câu lạc bộ có nhiều hơn 2 cầu 
-- thủ nước ngoài.
select CAULACBO_TueLDT.MACLB_0909, CAULACBO_TueLDT.TENCLB_0909, SANVD_TueLDT.TENSAN_0909, SANVD_TueLDT.DIACHI_0909, 
	COUNT(*) AS SO_LUONG FROM CAUTHU_TueLDT
-- Lựa chọn các cột theo yêu cầu
JOIN CAULACBO_TueLDT ON CAULACBO_TueLDT.MACLB_0909 = CAUTHU_TueLDT.MACLB_0909 -- Join bảng Câu Lạc Bộ
JOIN SANVD_TueLDT ON SANVD_TueLDT.MASAN_0909 = CAULACBO_TueLDT.MASAN_0909 -- Join bảng SVD
JOIN QUOCGIA_TueLDT ON QUOCGIA_TueLDT.MAQG_0909 = CAUTHU_TueLDT.MAQG_0909 AND QUOCGIA_TueLDT.TENQG_0909 <> N'Việt Nam'
-- Join bảng Quốc Gia
GROUP BY CAULACBO_TueLDT.MACLB_0909, CAULACBO_TueLDT.TENCLB_0909, SANVD_TueLDT.TENSAN_0909, SANVD_TueLDT.DIACHI_0909
-- GROUP theo CAULACBO
HAVING COUNT(*) >= 2

/******************************************************/

-- Bai thuc hanh so 3 - Tuan 13
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Truy vấn con
-- 2. Cho biết tên câu lạc bộ, tên tỉnh mà CLB đang đóng có hiệu số bàn thắng bại cao nhất 
-- năm 2009.

Select TOP 1 -- Lấy CLB có hiệu số bàn thắng bại cao nhất
	CAULACBO_TueLDT.TENCLB_0909, TINH_TueLDT.TENTINH_0909 from CAULACBO_TueLDT
-- Lựa chọn những cột theo yêu cầu
JOIN TINH_TueLDT ON TINH_TueLDT.MATINH_0909 = CAULACBO_TueLDT.MATINH_0909
-- Join bảng Tỉnh
JOIN BANGXH_TueLDT ON BANGXH_TueLDT.MACLB_0909 = CAULACBO_TueLDT.MACLB_0909 AND BANGXH_TueLDT.VONG_0909 = 3
-- Join bảng BXH
ORDER BY CAST(LEFT(BANGXH_TueLDT.HIEUSO_0909, CHARINDEX('-', BANGXH_TueLDT.HIEUSO_0909) - 1) AS INT)
	- CAST(SUBSTRING(BANGXH_TueLDT.HIEUSO_0909, CHARINDEX('-', BANGXH_TueLDT.HIEUSO_0909) + 1, LEN(BANGXH_TueLDT.HIEUSO_0909)) AS INT) DESC
-- Sắp xếp theo hiệu số

/******************************************************/

-- Bai thuc hanh so 3 - Tuan 13
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Truy vấn con
-- 3. Cho biết danh sách các trận đấu ( NGAYTD, TENSAN, TENCLB1, TENCLB2, KETQUA) của 
-- câu lạc bộ CLB có thứ hạng thấp nhất trong bảng xếp hạng vòng 3 năm 2009

select TOP 1 TRANDAU_TueLDT.NGAYTD_0909, SANVD_TueLDT.TENSAN_0909, c1.TENCLB_0909 AS TENCLB1, 
	c2.TENCLB_0909 AS TENCLB2, TRANDAU_TueLDT.KETQUA_0909
-- Lựa chọn những cột theo yêu cầu đề bài
from BANGXH_TueLDT -- Từ cột bảng Xếp Hạng
JOIN TRANDAU_TueLDT ON TRANDAU_TueLDT.MACLB1_0909 = BANGXH_TueLDT.MACLB_0909 
	OR TRANDAU_TueLDT.MACLB2_0909 = BANGXH_TueLDT.MACLB_0909
-- Join Bảng Trận Đấu
JOIN SANVD_TueLDT ON SANVD_TueLDT.MASAN_0909 = TRANDAU_TueLDT.MASAN_0909
-- Join Bảng Sân Vận Động
JOIN CAULACBO_TueLDT c1 ON c1.MACLB_0909 = TRANDAU_TueLDT.MACLB1_0909
JOIN CAULACBO_TueLDT c2 ON c2.MACLB_0909 = TRANDAU_TueLDT.MACLB2_0909
-- Join bảng Câu Lạc Bộ 2 lần để lấy tên 2 CLB
Where BANGXH_TueLDT.VONG_0909 = 3
ORDER BY HANG_0909 DESC
-- Lọc với điều kiện Là câu lạc bộ đứng thứ 1 sau vòng 3
/******************************************************/

/*BAI THUC HANH SO 3 - TUAN 13 
Le Dinh Tri Tue - 0909 - 2023.1 - 865
b. Truy vấn con
b.4 Cho biết mã câu lạc bộ, tên câu lạc bộ đã tham gia thi đấu với tất cả các câu lạc bộ
còn lại (kể cả sân nhà và sân khách) trong mùa giải năm 2009 */
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
select clb.MACLB_0909,clb.TENCLB_0909 -- lấy các cột theo yêu cầu
from CAULACBO_TueLDT clb -- từ bảng CLB
where not exists ((select clbkhac.MACLB_0909 from CAULACBO_TueLDT clbkhac -- với điều kiện không tồn tại CLB khác chưa đấu với đội này
				  where clbkhac.MACLB_0909 != clb.MACLB_0909) -- lấy ra mã các CLB khác
				  except ((select td1.MACLB1_0909 as MACLB_0909 from TRANDAU_TueLDT td1 -- phép trừ loại đi những câu lạc bộ đã đấu
						   where td1.MACLB2_0909 = clb.MACLB_0909) 
						   union (select td2.MACLB2_0909 as MACLB_0909 from TRANDAU_TueLDT td2
						   where td2.MACLB1_0909 = clb.MACLB_0909)))


/******************************************************/
/*BAI THUC HANH SO 3 - TUAN 13 
Le Dinh Tri Tue - 0909 - 2023.1 - 865
b. Truy vấn con
b.5 Cho biết mã câu lạc bộ, tên câu lạc bộ đã tham gia thi đấu với các câu lạc bộ còn lại (chỉ tính sân nhà) trong mùa giải năm 2009 */
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
select clb.MACLB_0909,clb.TENCLB_0909 -- lấy các cột theo yêu cầu
from CAULACBO_TueLDT clb -- từ bảng CLB
where not exists ((select clbkhac.MACLB_0909 from CAULACBO_TueLDT clbkhac -- với điều kiện không tồn tại CLB khác chưa đấu với đội này
				  where clbkhac.MACLB_0909 != clb.MACLB_0909) -- lấy ra mã các CLB khác
				  except ((select td1.MACLB1_0909 as MACLB_0909 from TRANDAU_TueLDT td1 -- phép trừ loại đi những câu lạc bộ đã đấu
						   where td1.MACLB2_0909 = clb.MACLB_0909
						   and clb.MASAN_0909 = td1.MASAN_0909) 
						   union (select td2.MACLB2_0909 as MACLB_0909 from TRANDAU_TueLDT td2
						   where td2.MACLB1_0909 = clb.MACLB_0909
						   and clb.MASAN_0909 = td2.MASAN_0909)))


/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13 
Le Dinh Tri Tue - 0909 - 2023.1 - 865
c. Bài tập về Rule
c.1 Khi thêm cầu thủ mới, kiểm tra vị trí trên sân của cầu thủ chỉ thuộc một trong các vị trí 
sau: Thủ môn, tiền đạo, tiền vệ, trung vệ, hậu vệ */
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
SET IDENTITY_INSERT CAUTHU_TueLDT ON;
alter table CAUTHU_TueLDT -- sửa bảng cầu thủ
add constraint chk_ViTri -- thêm ràng buộc vị trí
check (VITRI_0909 in ( N'Thủ môn', N'Tiền đạo', N'Tiền vệ', N'Trung vệ', N'Hậu vệ')) -- kiểm tra vị trí có thỏa mãn không
insert into CAUTHU_TueLDT(MACT_0909,HOTEN_0909,VITRI_0909,NGAYSINH_0909,DIACHI_0909,MACLB_0909,MAQG_0909,SO_0909)
values(10,'A7',N'Tiền đạo',1956-01-01,NULL,'HAGL','BRA',7)
insert into CAUTHU_TueLDT(MACT_0909,HOTEN_0909,VITRI_0909,NGAYSINH_0909,DIACHI_0909,MACLB_0909,MAQG_0909,SO_0909)
values(11,'M10',N'Ha',1956-01-01,NULL,'HAGL','BRA',10)
SET IDENTITY_INSERT CAUTHU_TueLDT OFF;
alter table CAUTHU_TueLDT
drop constraint chk_ViTri;

/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13
Le Dinh Tri Tue - 0909 - 2023.1 - 865
c. Bài tập về Rule
c.2 Khi phân công huấn luyện viên, kiểm tra vai trò của huấn luyện viên chỉ thuộc một trong các vai trò sau:
HLV Chính, HLV phụ, HLV thể lực, HLV thủ môn */
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
alter table HLV_CLB_TueLDT -- sửa bảng HLVCLB
add constraint chk_VaiTro -- thêm ràng buộc vai trò
check (VAITRO_0909 in(N'HLV Chính',N'HLV phụ',N'HLV thủ môn')) -- kiểm tra vai trò bản ghi có thỏa mãn không
insert into HLV_CLB_TueLDT
values('HLV07','BBD',N'HLV phụ')
insert into HLV_CLB_TueLDT
values('HLV08','HAGL',N'ahs')
alter table HLV_CLB_TueLDT
drop constraint chk_VaiTro

/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13
Le Dinh Tri Tue - 0909 - 2023.1 - 865
c. Bài tập về Rule
c.3 Khi thêm cầu thủ mới, kiểm tra cầu thủ đó có tuổi phải đủ 18 trở lên (chỉ tính năm sinh) */ 
use QLBongDa_TueLDT_865  -- mở CSDL quản lí bóng đá
SET IDENTITY_INSERT CAUTHU_TueLDT ON;
alter table CAUTHU_TueLDT -- chỉnh sửa bảng cầu thủ
add constraint chk_DoTuoi -- thêm ràng buộc độ tuổi
check (year(getDate()) - year(NGAYSINH_0909) >= 18) -- kiểm tra tuổi hiện tại có trên 18 không
insert into CAUTHU_TueLDT(MACT_0909,HOTEN_0909,VITRI_0909,NGAYSINH_0909,DIACHI_0909,MACLB_0909,MAQG_0909,SO_0909)
values(12,'A78',N'Tiền đạo','02-01-1978',NULL,'HAGL','BRA',7)
insert into CAUTHU_TueLDT(MACT_0909,HOTEN_0909,VITRI_0909,NGAYSINH_0909,DIACHI_0909,MACLB_0909,MAQG_0909,SO_0909)
values(13,'M11',N'Tiền vệ','05-01-2010',NULL,'HAGL','BRA',10)
SET IDENTITY_INSERT CAUTHU_TueLDT OFF;
alter table CAUTHU_TueLDT
drop constraint chk_DoTuoi

/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13 
Le Dinh Tri Tue - 0909 - 2023.1 - 865
c. Bài tập về Rule
c.4 Kiểm tra kết quả trận đấu có dạng số_bàn_thắng-số_bàn_thua */ 
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
SET IDENTITY_INSERT TRANDAU_TueLDT ON;
alter table TRANDAU_TueLDT -- chỉnh sửa bảng trận đấu
add constraint chk_KetQua -- thêm ràng buộc kết quả
check ( KETQUA_0909 like '[0-9]-[0-9]') -- kiểm tra kết quả có dạng SBThang - SBThua
insert into TRANDAU_TueLDT
values(12,2009,6,'11-03-2023','HAGL','TPY','TH', '1-2')
insert into TRANDAU_TueLDT
values(13,2009,7,'10-03-2023','HAGL','SDN','CL', 'a-1')
SET IDENTITY_INSERT TRANDAU_TueLDT OFF;
alter table TRANDAU_TueLDT
drop constraint chk_KetQua

/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13
Le Dinh Tri Tue - 0909 - 2023.1 - 865
d. Bài tập về View
d.1 Cho biết mã số, họ tên, ngày sinh, địa chỉ và vị trí của các cầu thủ thuộc đội bóng "SHB
Đà Nẵng" có quốc tịch "Bra-xin" */ 
use QLBongDa_TueLDT_865; -- mở CSDL quản lí bóng đá
create view d1x as -- tạo view
select ct.MACT_0909, ct.HOTEN_0909, ct.NGAYSINH_0909, ct.DIACHI_0909, ct.VITRI_0909 --lấy các cột 
from CAUTHU_TueLDT ct -- từ bảng cầu thủ
join CAULACBO_TueLDT clb on clb.MACLB_0909 = ct.MACLB_0909 -- join bảng clb với điều kiện cùng mã CLB
join QUOCGIA_TueLDT qg on ct.MAQG_0909 = qg.MAQG_0909 -- join bảng quốc gia với điều kiện cùng mã QG
where clb.TENCLB_0909 = N'SHB ÐÀ NẴNG' -- với điều kiện cầu thủ thuộc SHB Đà Nẵng
and qg.TENQG_0909 = N'Bra-xin' -- và quốc tịch Bra-xin


/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13
Le Dinh Tri Tue - 0909 - 2023.1 - 865
d. Bài tập về View
d.2 Cho biết kết quả (MATRAN, NGAYTD, TENSAN, TENCLB1, TENCLB2, KETQUA) các trận đấu vòng 3 
của mùa bóng năm 2009 */
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
create view d2 as -- tạo view mới
select td.MaTran_0909, td.NgayTD_0909, svd.TenSan_0909, clb1.TENCLB_0909 as TenCLB1, clb2.TENCLB_0909 as TenCLB2, td.KETQUA_0909 -- lấy các cột
from TRANDAU_TueLDT td -- từ bảng trận đấu
join SANVD_TueLDT svd on td.MASAN_0909 = svd.MASAN_0909 -- join bảng SVD với điều kiện cùng mã sân 
join CAULACBO_TueLDT clb1 on td.MACLB1_0909 = clb1.MACLB_0909 -- join bảng CLB với điều kiện đội 1 cùng mã CLB
join CAULACBO_TueLDT clb2 on td.MACLB2_0909 = clb2.MACLB_0909 -- join bảng CLB với điều kiện đội 2 cùng mã CLB
where td.VONG_0909 = 3 -- với điều kiện trận đấu ở vòng 3  
and td.NAM_0909 = 2009 -- và ở mùa giải 2009

/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13
Le Dinh Tri Tue - 0909 - 2023.1 - 865
d. Bài tập về View
d.3 Cho biết mã huấn luyện viên, họ tên, ngày sinh, địa chỉ, vai trò và tên CLB đang làm việc 
của các huấn luyện viên có quốc tịch "Việt Nam" */
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
create view d3 as -- tạo view mới
select hlv.MaHLV_0909, hlv.TenHLV_0909, hlv.NGAYSINH_0909, hlv.DIACHI_0909, hlvclb.VaiTro_0909, clb.TENCLB_0909 -- lấy các cột
from HUANLUYENVIEN_TueLDT hlv -- từ bảng hlv
join HLV_CLB_TueLDT hlvclb on hlv.MaHLV_0909 = hlvclb.MaHLV_0909 -- join bảng HLVCLB với điều kiện cùng mã HLV
join QUOCGIA_TueLDT qg on hlv.MAQG_0909 = qg.MAQG_0909 -- join bảng quốc gia với điều kiện cùng mã QG
join CAULACBO_TueLDT clb on hlvclb.MACLB_0909 = clb.MACLB_0909 -- join bảng CLB với điều kiện cùng mã CLB
where qg.TENQG_0909 = N'Việt Nam' -- với điều kiện quốc tịch là Việt Nam

/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13
Le Dinh Tri Tue - 0909 - 2023.1 - 865
d. Bài tập về View
d.4 Cho biết mã câu lạc bộ, tên câu lạc bộ, tên sân vận động, địa chỉ và số lượng cầu thủ nước ngoài
(có quốc tịch khác "Việt Nam") tương ứng của các câu lạc bộ nhiều hơn 2 cầu thủ nước ngoài */
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
create view d4 as -- tạo view mới
select CAULACBO_TueLDT.MACLB_0909, CAULACBO_TueLDT.TENCLB_0909, SANVD_TueLDT.TENSAN_0909, SANVD_TueLDT.DIACHI_0909, 
	COUNT(*) AS SO_LUONG FROM CAUTHU_TueLDT
-- Lựa chọn các cột theo yêu cầu
JOIN CAULACBO_TueLDT ON CAULACBO_TueLDT.MACLB_0909 = CAUTHU_TueLDT.MACLB_0909
-- Join bảng Câu Lạc Bộ
JOIN SANVD_TueLDT ON SANVD_TueLDT.MASAN_0909 = CAULACBO_TueLDT.MASAN_0909
-- Join bảng SVD
JOIN QUOCGIA_TueLDT ON QUOCGIA_TueLDT.MAQG_0909 = CAUTHU_TueLDT.MAQG_0909 AND QUOCGIA_TueLDT.TENQG_0909 <> N'Việt Nam'
-- Join bảng Quốc Gia
GROUP BY CAULACBO_TueLDT.MACLB_0909, CAULACBO_TueLDT.TENCLB_0909, SANVD_TueLDT.TENSAN_0909, SANVD_TueLDT.DIACHI_0909
-- GROUP theo CAULACBO
HAVING COUNT(*) >= 2

/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13
Le Dinh Tri Tue - 0909 - 2023.1 - 865
d. Bài tập về View
d.5 Cho biết tên tỉnh, số lượng cầu thủ đang thi đấu ở vị trí tiền đạo trong các câu lạc bộ thuộc
địa bàn tỉnh đó quản lý */
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
create view d5 as -- tạo view mới
select tinh.TenTinh_0909, count(ct.MACT_0909) as SoLuong_0909 -- lấy các cột
from TINH_TueLDT tinh -- từ bảng tỉnh
join CAULACBO_TueLDT clb on tinh.MATINH_0909 = clb.MATINH_0909 -- join bảng CLB với điều kiện cùng mã tỉnh
join CAUTHU_TueLDT ct on ct.MACLB_0909 = clb.MACLB_0909 -- join bảng cầu thủ với điều kiện cùng mã CLB
where ct.VITRI_0909 = N'Tiền đạo' -- với điều kiện vị trí cầu thủ là tiền đạo
group by tinh.TenTinh_0909 -- nhóm lại bởi tỉnh

/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13
Le Dinh Tri Tue - 0909 - 2023.1 - 865
d. Bài tập về View
d.6 Cho biết tên câu lạc bộ, tên tỉnh mà CLB đang đóng nằm ở vị trí cao nhất của
bảng xếp hạng của vòng 3 năm 2009 */
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
create view d6 as -- tạo view mới
select clb.TENCLB_0909, tinh.TenTinh_0909 -- lấy các cột
from CAULACBO_TueLDT clb -- từ bảng CLB
join TINH_TueLDT tinh on clb.MATINH_0909 = tinh.MATINH_0909 -- join bảng tỉnh với điều kiện cùng mã tỉnh
join BANGXH_TueLDT bxh on clb.MACLB_0909 = bxh.MACLB_0909 -- join bảng BXH với điều kiện cùng mã CLB
where bxh.HANG_0909 = 1 -- với điều kiện là hạng 1 tính đến hết vòng 3 năm 2009 
and bxh.NAM_0909 = 2009
and bxh.VONG_0909 = 3

/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13
Le Dinh Tri Tue - 0909 - 2023.1 - 865
d. Bài tập về View
d.7 Cho biết tên huấn luyện viên đang nắm giữ một vị trí trong 1 câu lạc bộ mà chưa
có số điện thoại */
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
create view d7 as -- tạo view mới
select hlv.TENHLV_0909 -- lấy các cột 
from HUANLUYENVIEN_TueLDT hlv -- từ bảng hlv
join HLV_CLB_TueLDT hlvclb on hlv.MAHLV_0909 = hlvclb.MAHLV_0909 -- join bảng HLVCLB với điều kiện cùng mã HLV
where hlv.DIACHI_0909 is NULL -- với điều kiện HLV chưa có số điện thoại

/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13
Le Dinh Tri Tue - 0909 - 2023.1 - 865
d. Bài tập về View
d.8 Liệt kê các huấn luyện viên thuộc quốc gia Việt Nam chưa làm công tác huấn luyện
tại bất kỳ một câu lạc bộ nào */
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
create view d8 as -- tạo view mới

Select HUANLUYENVIEN_TueLDT.* -- Liệt kê tất cả các cột
from HUANLUYENVIEN_TueLDT -- Từ bảng Huấn Luyện Viên
left join HLV_CLB_TueLDT ON HUANLUYENVIEN_TueLDT.MAHLV_0909 = HLV_CLB_TueLDT.MAHLV_0909  
-- Left Join với bảng HLV_CLB 
JOIN QUOCGIA_TueLDT ON QUOCGIA_TueLDT.MAQG_0909 = HUANLUYENVIEN_TueLDT.MAQG_0909 
-- JOIN bảng Quốc Gia để 
WHERE HLV_CLB_TueLDT.MAHLV_0909 IS NULL 
   AND QUOCGIA_TueLDT.TENQG_0909 = N'Việt Nam';
-- lọc ra những huấn luyện viên chưa huấn luyện tại bất kỳ câu lạc bộ nào và có quốc tịch Việt Nam

/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13
Le Dinh Tri Tue - 0909 - 2023.1 - 865
d. Bài tập về View
d.9 Cho biết kết quả các trận đấu đã diễn ra (MACLB1, MACLB2, NAM, VONG, SOBANTHANG, SOBANTHUA) */
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
create view d9 as -- tạo view mới
select td.MACLB1_0909, td.MACLB2_0909, td.NAM_0909, td.VONG_0909, -- lấy mã clb1, clb2, năm, vòng
cast(left(td.KETQUA_0909, charindex('-', td.KETQUA_0909) - 1) AS INT) as SoBanTHANG_0909, -- lấy số bàn thắng
cast(substring(td.KETQUA_0909, charindex('-', td.KETQUA_0909) + 1, len(td.KETQUA_0909)) as INT) as SoBanThua_0909 -- lấy số bàn thua
from TRANDAU_TueLDT td

/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13
Le Dinh Tri Tue - 0909 - 2023.1 - 865
d. Bài tập về View
d.10 Cho biết kết quả các trận đấu trên sân nhà (MACLB, NAM, VONG, SOBANTHANG, SOBANTHUA) */
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
create view d10 as -- tạo view mới
select td.MACLB1_0909 as MACLB_0909, td.NAM_0909, td.VONG_0909, -- lấy mã clb, năm, vòng của trận đấu
cast(left(td.KETQUA_0909, charindex('-', td.KETQUA_0909) - 1) AS INT) as SoBanTHANG_0909, -- lấy số bàn thắng
cast(substring(td.KETQUA_0909, charindex('-', td.KETQUA_0909) + 1, len(td.KETQUA_0909)) as INT) as SoBanThua_0909 -- lấy số bàn thua
from TRANDAU_TueLDT td -- từ bảng trận đấu
join CAULACBO_TueLDT clb1 on td.MACLB1_0909 = clb1.MACLB_0909 -- join bảng clb với điều kiện clb1 cùng mã CLB
where td.MASAN_0909 = clb1.MASAN_0909 -- với điều kiện sân nhà ở CLB1 
union select td.MACLB2_0909 as MACLB_0909, td.NAM_0909, td.VONG_0909, -- lấy mã clb, năm, vòng của trận đấu
cast(substring(td.KETQUA_0909, charindex('-', td.KETQUA_0909) + 1, len(td.KETQUA_0909)) as INT) as SoBanTHANG_0909, -- lấy số bàn thắng
cast(left(td.KETQUA_0909, charindex('-', td.KETQUA_0909) - 1) AS INT) as SoBanThua_0909 -- lấy số bàn thua
from TRANDAU_TueLDT td -- từ bảng trận đấu
join CAULACBO_TueLDT clb2 on td.MACLB2_0909 = clb2.MACLB_0909 -- join bảng clb với điều kiện clb2 cùng mã clb
where td.MASAN_0909 = clb2.MASAN_0909 -- với điều kiện sân nhà ở CLB2


/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13
Le Dinh Tri Tue - 0909 - 2023.1 - 865
d. Bài tập về View
d.11 Cho biết kết quả các trận đấu trên sân khách (MACLB, NAM, VONG, SOBANTHANG, SOBANTHUA) */
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
create view d11 as
select td.MACLB2_0909 as MACLB_0909, td.NAM_0909, td.VONG_0909, -- lấy mã clb, năm, vòng của trận đấu
cast(substring(td.KETQUA_0909, charindex('-', td.KETQUA_0909) + 1, len(td.KETQUA_0909)) as INT) as SoBanTHANG_0909, -- lấy số bàn thắng
cast(left(td.KETQUA_0909, charindex('-', td.KETQUA_0909) - 1) AS INT) as SoBanThua_0909 -- lấy số bàn thua
from TRANDAU_TueLDT td -- từ bảng trận đấu
join CAULACBO_TueLDT clb1 on td.MACLB1_0909 = clb1.MACLB_0909 -- join bảng clb với điều kiện clb1 cùng mã CLB
where td.MASAN_0909 = clb1.MASAN_0909 -- với điều kiện sân nhà ở CLB1 
union select td.MACLB1_0909 as MACLB_0909, td.NAM_0909, td.VONG_0909, -- lấy mã clb, năm, vòng của trận đấu
cast(left(td.KETQUA_0909, charindex('-', td.KETQUA_0909) - 1) AS INT) as SoBanTHANG_0909, -- lấy số bàn thắng
cast(substring(td.KETQUA_0909, charindex('-', td.KETQUA_0909) + 1, len(td.KETQUA_0909)) as INT) as SoBanThua_0909 -- lấy số bàn thua
from TRANDAU_TueLDT td -- từ bảng trận đấu
join CAULACBO_TueLDT clb2 on td.MACLB2_0909 = clb2.MACLB_0909 -- join bảng clb với điều kiện clb2 cùng mã clb
where td.MASAN_0909 = clb2.MASAN_0909 -- với điều kiện sân nhà ở CLB2

/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13
Le Dinh Tri Tue - 0909 - 2023.1 - 865
d. Bài tập về View
d.12 Cho biết danh sách các trận đấu (NGAYTD, TENSAN, TENCLB1, TENCLB2, KETQUA) 
của câu lạc bộ CLB đang xếp hạng cao nhất tính đến hết vòng 3 năm 2009 */
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
create view d12 as -- tạo view mới
select td.NgayTD_0909, svd.TenSan_0909, clb1.TENCLB_0909 as TenCLB1_0909, clb2.TENCLB_0909 as TenCLB2_0909, td.KETQUA_0909 -- lấy các cột
from TRANDAU_TueLDT td -- từ bảng trận đấu
join SANVD_TueLDT svd on td.MASAN_0909 = svd.MASAN_0909 -- join bảng SVD với điều kiện cùng mã sân
join CAULACBO_TueLDT clb1 on td.MACLB1_0909 = clb1.MACLB_0909 -- join bảng CLB với điều kiện cùng mã CLB1
join CAULACBO_TueLDT clb2 on td.MACLB2_0909 = clb2.MACLB_0909 -- join bảng CLB với điều kiện cùng mã CLB2
where td.VONG_0909 <= 3 -- với điều kiện trận đấu tính đến vòng 3
and ( exists ( select bxh.MACLB_0909 from BANGXH_TueLDT bxh -- và có mặt đội thứ nhất tính đến hết vòng 3 năm 2009
			    where (td.MACLB1_0909 = bxh.MACLB_0909 
				or td.MACLB2_0909 = bxh.MACLB_0909)
				and bxh.VONG_0909 = 3
				and bxh.NAM_0909 = 2009
				and bxh.HANG_0909 = 1))	
				

/******************************************************/
/*BAI THUC HANH SO 2 - TUAN 13
Le Dinh Tri Tue - 0909 - 2023.1 - 865
d. Bài tập về View
d.13 Cho biết danh sách các trận đấu (NGAYTD, TENSAN, TENCLB1, TENCLB2, KETQUA)
của câu lạc bộ CLB có thứ hạng thấp nhất trong bảng xếp hạng vòng 3 năm 2009 */
use QLBongDa_TueLDT_865 -- mở CSDL quản lí bóng đá
create view d13 as -- tạo view mới
select td.NgayTD_0909, svd.TenSan_0909, clb1.TENCLB_0909 as TenCLB1_0909, clb2.TENCLB_0909 as TenCLB2_0909, td.KETQUA_0909 -- lấy các cột
from TRANDAU_TueLDT td -- từ bảng trận đấu
join SANVD_TueLDT svd on td.MASAN_0909 = svd.MASAN_0909 -- join bảng SVD với điều kiện cùng mã sân
join CAULACBO_TueLDT clb1 on td.MACLB1_0909 = clb1.MACLB_0909 -- join bảng CLB với điều kiện cùng mã CLB1
join CAULACBO_TueLDT clb2 on td.MACLB2_0909 = clb2.MACLB_0909 -- join bảng CLB với điều kiện cùng mã CLB2
where td.VONG_0909 <= 3 -- với điều kiện trận đấu tính đến vòng 3
and ( td.MACLB1_0909 = (select top 1 bxh.MACLB_0909 from BANGXH_TueLDT bxh -- và có mặt đội hạng thấp nhất tính đến hết vòng 3 năm 2009
				where bxh.VONG_0909 = 3
				and bxh.NAM_0909 = 2009 
				order by bxh.HANG_0909 desc)
	 or td.MACLB2_0909 = (select top 1 bxh.MACLB_0909 from BANGXH_TueLDT bxh
				where bxh.VONG_0909 = 3
				and bxh.NAM_0909 = 2009 
				order by bxh.HANG_0909 desc))	