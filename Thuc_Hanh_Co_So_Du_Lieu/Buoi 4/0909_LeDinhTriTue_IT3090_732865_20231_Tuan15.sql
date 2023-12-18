-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Bài tập về Store Procedure
-- 1.  In ra dòng chữ “Xin Chao”.

CREATE PROCEDURE Bai4a1_TueLDT -- Tạo Procedure
AS 
Begin
	print N'Le Dinh Tri Tue Xin Chao' -- In ra thông tin theo yêu cầu
End

Exec Bai4a1_TueLDT

/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Bài tập về Store Procedure
-- 2. In ra dòng chữ “ Xin chào” + @ten với @ten là tham số đầu vào là 
-- tên của bạn. Cho thực thi và in giá trị cảu các tham số này để kiểm tra

CREATE PROCEDURE Bai4a2_TueLDT -- Tạo Procedure
	@ten_TueLDT NVARCHAR(MAX)
AS 
Begin
	print N'Le Dinh Tri Tue Xin Chao' + @ten_TueLDT -- In ra thông tin theo yêu cầu
End

Exec Bai4a2_TueLDT @ten_TueLDT = ' Le Dinh Tri Tue'

/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Bài tập về Store Procedure
-- 3. Nhập vào 2 số @s1,@s2. In ra câu “Tổng là : @tg’ với @tg = @s1+@s2

CREATE PROCEDURE Bai4a3_TueLDT -- Tạo Procedure
	@s1_TueLDT float, @s2_TueLDT float
AS 
Begin
	DECLARE @tg float; -- Khai báo biến tổng
    SET @tg = @s1_TueLDT + @s2_TueLDT; -- Gán giá trị biến tg bằng tổng s1 và s2
	-- In ra thông tin theo yêu cầu
	print N'Le Dinh Tri Tue Tong la: ' + CAST(@tg AS NVARCHAR(255)) 
End

Exec Bai4a3_TueLDT @s1_TueLDT = 5, @s2_TueLDT = 7

/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Bài tập về Store Procedure
-- 4. Nhập vào 2 số @s1,@s2. Xuất min và max của chúng ra tham số
-- @max Cho thực thi và in giá trị của các tham số này để kiểm tra.

-- Tạo Procedure
CREATE PROCEDURE Bai4a4_TueLDT
    @s1_TueLDT float,
    @s2_TueLDT float,
    @min_TueLDT float OUTPUT,
    @max_TueLDT float OUTPUT
AS 
BEGIN
    -- Tìm giá trị min và max
    IF @s1_TueLDT < @s2_TueLDT
    BEGIN
        SET @min_TueLDT = @s1_TueLDT
        SET @max_TueLDT = @s2_TueLDT
    END
    ELSE
    BEGIN
        SET @min_TueLDT = @s2_TueLDT;
        SET @max_TueLDT = @s1_TueLDT;
    END

    -- In ra giá trị min và max
    print N'Le Dinh Tri Tue Min là: ' + CAST(@min_TueLDT AS NVARCHAR(255))
	print N'Le Dinh Tri Tue Max là: ' + CAST(@max_TueLDT AS NVARCHAR(255))
END

-- Gọi Procedure
DECLARE @min_result_TueLDT float;
DECLARE @max_result_TueLDT float;

-- Gọi Procedure và nhận giá trị min và max qua OUTPUT parameters
EXEC Bai4a4_TueLDT @s1_TueLDT = 10, @s2_TueLDT = 5, 
	@min_TueLDT = @min_result_TueLDT OUTPUT, @max_TueLDT = @max_result_TueLDT OUTPUT;

-- In ra giá trị min và max để kiểm tra
print N'Le Dinh Tri Tue Giá trị min nhận được là: ' + CAST(@min_result_TueLDT AS NVARCHAR(255))
print N'Le Dinh Tri Tue Giá trị max nhận được là: ' + CAST(@max_result_TueLDT AS NVARCHAR(255))

/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Bài tập về Store Procedure
-- 5. Nhập vào số nguyên @n. In ra các số từ 1 đến @n.

CREATE PROCEDURE Bai4a5_TueLDT -- Tạo Procedure
	@n_TueLDT int
AS 
Begin
	-- Khởi tạo biến đếm có giá trị bằng 1
	DECLARE @count_TueLDT int = 1

	WHILE @count_TueLDT <= @n_TueLDT -- Dùng vòng while để duyệt từ 1 đến n
	BEGIN
		-- In ra số thứ i
		PRINT N'Lê Đình Trí Tuệ Số thứ ' + CAST(@count_TueLDT AS NVARCHAR(255));
		SET @count_TueLDT = @count_TueLDT + 1;
	END
END

-- Gọi Procedure
Exec Bai4a5_TueLDT @n_TueLDT = 6

/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Bài tập về Store Procedure
-- 6. Nhập vào số nguyên @n. In ra tổng các số chẵn từ 1 đến @n.
CREATE PROCEDURE Bai4a6_TueLDT -- Tạo Procedure
	@n_TueLDT int
AS 
Begin
	DECLARE @count_TueLDT int = 1 -- Khởi tạo biến đếm có giá trị bằng 1
	DECLARE @sum_TueLDT int = 0	-- Khởi tạo biến đếm tổng có giá trị bằng 0

	WHILE @count_TueLDT <= @n_TueLDT -- Dùng vòng while để duyệt từ 1 đến n
	BEGIN
		IF @count_TueLDT % 2 = 0 -- Nếu số hiện tại là số chẵn
		BEGIN
			SET @sum_TueLDT = @sum_TueLDT + @count_TueLDT -- Thì biến sum được tăng lên
		END
		SET @count_TueLDT = @count_TueLDT + 1;
	END
	-- In ra tổng các số chẵn từ 1 đến n
	PRINT N'Lê Đình Trí Tuệ Tổng các số chẵn từ 1 đến n: ' 
		+ CAST(@sum_TueLDT AS NVARCHAR(255));
END

--Gọi Procedure
Exec Bai4a6_TueLDT @n_TueLDT = 6

/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Bài tập về Store Procedure
-- 7.1  Viết store procedure tương ứng với các cầu ở phần View. -- Sau đó cho thể hiện kết quả
CREATE PROCEDURE Bai4a7_1_TueLDT -- Tạo Procedure
AS 
Begin
	select ct.MACT_0909, ct.HOTEN_0909, ct.NGAYSINH_0909, ct.DIACHI_0909, ct.VITRI_0909 --lấy các cột 
	from CAUTHU_TueLDT ct -- từ bảng cầu thủ
	-- join bảng clb với điều kiện cùng mã CLB
	join CAULACBO_TueLDT clb on clb.MACLB_0909 = ct.MACLB_0909 
	-- join bảng quốc gia với điều kiện cùng mã QG
	join QUOCGIA_TueLDT qg on ct.MAQG_0909 = qg.MAQG_0909
	where clb.TENCLB_0909 = N'SHB ÐÀ NẴNG' -- với điều kiện cầu thủ thuộc SHB Đà Nẵng
	and qg.TENQG_0909 = N'Bra-xin' -- và quốc tịch Bra-xin
END
--Gọi Procedure
Exec Bai4a7_1_TueLDT
/******************************************************/

CREATE PROCEDURE Bai4a7_2_TueLDT -- Tạo Procedure
AS 
Begin
	select td.MaTran_0909, td.NgayTD_0909, svd.TenSan_0909, 
	clb1.TENCLB_0909 as TenCLB1, clb2.TENCLB_0909 as TenCLB2, td.KETQUA_0909 -- lấy các cột
	from TRANDAU_TueLDT td -- từ bảng trận đấu
	join SANVD_TueLDT svd on td.MASAN_0909 = svd.MASAN_0909 -- join bảng SVD với điều kiện cùng mã sân 
	-- join bảng CLB với điều kiện đội 1 cùng mã CLB
	join CAULACBO_TueLDT clb1 on td.MACLB1_0909 = clb1.MACLB_0909
	-- join bảng CLB với điều kiện đội 2 cùng mã CLB
	join CAULACBO_TueLDT clb2 on td.MACLB2_0909 = clb2.MACLB_0909
	where td.VONG_0909 = 3 -- với điều kiện trận đấu ở vòng 3  
	and td.NAM_0909 = 2009 -- và ở mùa giải 2009
END

--Gọi Procedure
Exec Bai4a7_2_TueLDT

/******************************************************/

CREATE PROCEDURE Bai4a7_3_TueLDT -- Tạo Procedure
AS 
Begin
	select hlv.MaHLV_0909, hlv.TenHLV_0909, hlv.NGAYSINH_0909, 
	hlv.DIACHI_0909, hlvclb.VaiTro_0909, clb.TENCLB_0909 -- lấy các cột
	from HUANLUYENVIEN_TueLDT hlv -- từ bảng hlv
	join HLV_CLB_TueLDT hlvclb on hlv.MaHLV_0909 = hlvclb.MaHLV_0909 -- join bảng HLVCLB 
	join QUOCGIA_TueLDT qg on hlv.MAQG_0909 = qg.MAQG_0909 -- join bảng quốc gia
	join CAULACBO_TueLDT clb on hlvclb.MACLB_0909 = clb.MACLB_0909 -- join bảng CLB
	where qg.TENQG_0909 = N'Việt Nam' -- với điều kiện quốc tịch là Việt Nam
END

--Gọi Procedure
Exec Bai4a7_3_TueLDT

/******************************************************/

CREATE PROCEDURE Bai4a7_4_TueLDT -- Tạo Procedure
AS 
Begin
	select CAULACBO_TueLDT.MACLB_0909, CAULACBO_TueLDT.TENCLB_0909, 
		SANVD_TueLDT.TENSAN_0909, SANVD_TueLDT.DIACHI_0909, 
		COUNT(*) AS SO_LUONG FROM CAUTHU_TueLDT
	-- Lựa chọn các cột theo yêu cầu
	JOIN CAULACBO_TueLDT ON CAULACBO_TueLDT.MACLB_0909 = CAUTHU_TueLDT.MACLB_0909
	-- Join bảng Câu Lạc Bộ
	JOIN SANVD_TueLDT ON SANVD_TueLDT.MASAN_0909 = CAULACBO_TueLDT.MASAN_0909
	-- Join bảng SVD
	JOIN QUOCGIA_TueLDT ON QUOCGIA_TueLDT.MAQG_0909 = CAUTHU_TueLDT.MAQG_0909 
						AND QUOCGIA_TueLDT.TENQG_0909 <> N'Việt Nam'
	-- Join bảng Quốc Gia
	GROUP BY CAULACBO_TueLDT.MACLB_0909, CAULACBO_TueLDT.TENCLB_0909, 
			SANVD_TueLDT.TENSAN_0909, SANVD_TueLDT.DIACHI_0909
	-- GROUP theo CAULACBO
	HAVING COUNT(*) >= 2
END

--Gọi Procedure
Exec Bai4a7_4_TueLDT

/******************************************************/

CREATE PROCEDURE Bai4a7_5_TueLDT -- Tạo Procedure
AS 
Begin
	select tinh.TenTinh_0909, count(ct.MACT_0909) as SoLuong_0909 -- lấy các cột
	from TINH_TueLDT tinh -- từ bảng tỉnh
	-- join bảng CLB với điều kiện cùng mã tỉnh
	join CAULACBO_TueLDT clb on tinh.MATINH_0909 = clb.MATINH_0909 
	-- join bảng cầu thủ với điều kiện cùng mã CLB
	join CAUTHU_TueLDT ct on ct.MACLB_0909 = clb.MACLB_0909 
	where ct.VITRI_0909 = N'Tiền đạo' -- với điều kiện vị trí cầu thủ là tiền đạo
	group by tinh.TenTinh_0909 -- nhóm lại bởi tỉnh
END

--Gọi Procedure
Exec Bai4a7_5_TueLDT

/******************************************************/

CREATE PROCEDURE Bai4a7_6_TueLDT -- Tạo Procedure
AS 
Begin
	select clb.TENCLB_0909, tinh.TenTinh_0909 -- lấy các cột
	from CAULACBO_TueLDT clb -- từ bảng CLB
	-- join bảng tỉnh với điều kiện cùng mã tỉnh
	join TINH_TueLDT tinh on clb.MATINH_0909 = tinh.MATINH_0909 
	-- join bảng BXH với điều kiện cùng mã CLB
	join BANGXH_TueLDT bxh on clb.MACLB_0909 = bxh.MACLB_0909 
	where bxh.HANG_0909 = 1 -- với điều kiện là hạng 1 tính đến hết vòng 3 năm 2009 
	and bxh.NAM_0909 = 2009
	and bxh.VONG_0909 = 3
END

--Gọi Procedure
Exec Bai4a7_6_TueLDT

/******************************************************/

CREATE PROCEDURE Bai4a7_7_TueLDT -- Tạo Procedure
AS 
Begin
	select hlv.TENHLV_0909 -- lấy các cột 
	from HUANLUYENVIEN_TueLDT hlv -- từ bảng hlv
	-- join bảng HLVCLB với điều kiện cùng mã HLV
	join HLV_CLB_TueLDT hlvclb on hlv.MAHLV_0909 = hlvclb.MAHLV_0909
	where hlv.DIACHI_0909 is NULL -- với điều kiện HLV chưa có số điện thoại
END

--Gọi Procedure
Exec Bai4a7_7_TueLDT

/******************************************************/

CREATE PROCEDURE Bai4a7_8_TueLDT -- Tạo Procedure
AS 
Begin
	Select HUANLUYENVIEN_TueLDT.* -- Liệt kê tất cả các cột
	from HUANLUYENVIEN_TueLDT -- Từ bảng Huấn Luyện Viên
	left join HLV_CLB_TueLDT ON HUANLUYENVIEN_TueLDT.MAHLV_0909 = HLV_CLB_TueLDT.MAHLV_0909  
	-- Left Join với bảng HLV_CLB 
	JOIN QUOCGIA_TueLDT ON QUOCGIA_TueLDT.MAQG_0909 = HUANLUYENVIEN_TueLDT.MAQG_0909 
	-- JOIN bảng Quốc Gia để 
	WHERE HLV_CLB_TueLDT.MAHLV_0909 IS NULL 
	   AND QUOCGIA_TueLDT.TENQG_0909 = N'Việt Nam';
	-- lọc ra những huấn luyện viên chưa huấn luyện tại bất kỳ câu lạc bộ nào và có quốc tịch Việt Nam
END

--Gọi Procedure
Exec Bai4a7_8_TueLDT

/******************************************************/

CREATE PROCEDURE Bai4a7_9_TueLDT -- Tạo Procedure
AS 
Begin
	select td.MACLB1_0909, td.MACLB2_0909, td.NAM_0909, td.VONG_0909, -- lấy mã clb1, clb2, năm, vòng
	-- lấy số bàn thắng
	cast(left(td.KETQUA_0909, charindex('-', td.KETQUA_0909) - 1) AS INT) 
		as SoBanTHANG_0909,	-- lấy số bàn thắng
	cast(substring(td.KETQUA_0909, charindex('-', td.KETQUA_0909) + 1, len(td.KETQUA_0909)) as INT) 
		as SoBanThua_0909 -- lấy số bàn thua
	from TRANDAU_TueLDT td
END

--Gọi Procedure
Exec Bai4a7_9_TueLDT

/******************************************************/

CREATE PROCEDURE Bai4a7_10_TueLDT -- Tạo Procedure
AS 
Begin
	select td.MACLB1_0909 as MACLB_0909, td.NAM_0909, td.VONG_0909, -- lấy mã clb, năm, vòng của trận đấu
	cast(left(td.KETQUA_0909, charindex('-', td.KETQUA_0909) - 1) AS INT) as SoBanTHANG_0909, -- lấy số bàn thắng
	cast(substring(td.KETQUA_0909, charindex('-', td.KETQUA_0909) + 1, len(td.KETQUA_0909)) as INT) 
		as SoBanThua_0909 -- lấy số bàn thua
	from TRANDAU_TueLDT td -- từ bảng trận đấu
	join CAULACBO_TueLDT clb1 on td.MACLB1_0909 = clb1.MACLB_0909 -- join bảng clb với điều kiện clb1 cùng mã CLB
	where td.MASAN_0909 = clb1.MASAN_0909 -- với điều kiện sân nhà ở CLB1 
	union select td.MACLB2_0909 as MACLB_0909, td.NAM_0909, td.VONG_0909, -- lấy mã clb, năm, vòng của trận đấu
	cast(substring(td.KETQUA_0909, charindex('-', td.KETQUA_0909) + 1, len(td.KETQUA_0909)) as INT) 
		as SoBanTHANG_0909, -- lấy số bàn thắng
	cast(left(td.KETQUA_0909, charindex('-', td.KETQUA_0909) - 1) AS INT) as SoBanThua_0909 -- lấy số bàn thua
	from TRANDAU_TueLDT td -- từ bảng trận đấu
	join CAULACBO_TueLDT clb2 on td.MACLB2_0909 = clb2.MACLB_0909 -- join bảng clb với điều kiện clb2 cùng mã clb
	where td.MASAN_0909 = clb2.MASAN_0909 -- với điều kiện sân nhà ở CLB2
END

--Gọi Procedure
Exec Bai4a7_10_TueLDT

/******************************************************/

CREATE PROCEDURE Bai4a7_11_TueLDT -- Tạo Procedure
AS 
Begin
	select td.MACLB2_0909 as MACLB_0909, td.NAM_0909, td.VONG_0909, -- lấy mã clb, năm, vòng của trận đấu
	cast(substring(td.KETQUA_0909, charindex('-', td.KETQUA_0909) + 1, len(td.KETQUA_0909)) as INT) 
		as SoBanTHANG_0909, -- lấy số bàn thắng
	cast(left(td.KETQUA_0909, charindex('-', td.KETQUA_0909) - 1) AS INT) as SoBanThua_0909 -- lấy số bàn thua
	from TRANDAU_TueLDT td -- từ bảng trận đấu
	join CAULACBO_TueLDT clb1 on td.MACLB1_0909 = clb1.MACLB_0909 -- join bảng clb với điều kiện clb1 cùng mã CLB
	where td.MASAN_0909 = clb1.MASAN_0909 -- với điều kiện sân nhà ở CLB1 
	union select td.MACLB1_0909 as MACLB_0909, td.NAM_0909, td.VONG_0909, -- lấy mã clb, năm, vòng của trận đấu
	cast(left(td.KETQUA_0909, charindex('-', td.KETQUA_0909) - 1) AS INT) as SoBanTHANG_0909, -- lấy số bàn thắng
	cast(substring(td.KETQUA_0909, charindex('-', td.KETQUA_0909) + 1, len(td.KETQUA_0909)) as INT) 
		as SoBanThua_0909 -- lấy số bàn thua
	from TRANDAU_TueLDT td -- từ bảng trận đấu
	join CAULACBO_TueLDT clb2 on td.MACLB2_0909 = clb2.MACLB_0909 -- join bảng clb với điều kiện clb2 cùng mã clb
	where td.MASAN_0909 = clb2.MASAN_0909 -- với điều kiện sân nhà ở CLB2
END

--Gọi Procedure
Exec Bai4a7_11_TueLDT

/******************************************************/

CREATE PROCEDURE Bai4a7_12_TueLDT -- Tạo Procedure
AS 
Begin
	select td.NgayTD_0909, svd.TenSan_0909, clb1.TENCLB_0909 as TenCLB1_0909, 
		clb2.TENCLB_0909 as TenCLB2_0909, td.KETQUA_0909 -- lấy các cột
	from TRANDAU_TueLDT td -- từ bảng trận đấu
	join SANVD_TueLDT svd on td.MASAN_0909 = svd.MASAN_0909 -- join bảng SVD với điều kiện cùng mã sân
	join CAULACBO_TueLDT clb1 on td.MACLB1_0909 = clb1.MACLB_0909 -- join bảng CLB với điều kiện cùng mã CLB1
	join CAULACBO_TueLDT clb2 on td.MACLB2_0909 = clb2.MACLB_0909 -- join bảng CLB với điều kiện cùng mã CLB2
	where td.VONG_0909 <= 3 -- với điều kiện trận đấu tính đến vòng 3
	and ( exists ( select bxh.MACLB_0909 from BANGXH_TueLDT bxh -- và có mặt đội thứ nhất tính đến hết vòng 3 - 2009
					where (td.MACLB1_0909 = bxh.MACLB_0909 
					or td.MACLB2_0909 = bxh.MACLB_0909)
					and bxh.VONG_0909 = 3
					and bxh.NAM_0909 = 2009
					and bxh.HANG_0909 = 1))	
END

--Gọi Procedure
Exec Bai4a7_12_TueLDT

/******************************************************/

CREATE PROCEDURE Bai4a7_13_TueLDT -- Tạo Procedure
AS 
Begin
	select td.NgayTD_0909, svd.TenSan_0909, clb1.TENCLB_0909 as TenCLB1_0909, 
		clb2.TENCLB_0909 as TenCLB2_0909, td.KETQUA_0909 -- lấy các cột
	from TRANDAU_TueLDT td -- từ bảng trận đấu
	join SANVD_TueLDT svd on td.MASAN_0909 = svd.MASAN_0909 -- join bảng SVD với điều kiện cùng mã sân
	join CAULACBO_TueLDT clb1 on td.MACLB1_0909 = clb1.MACLB_0909 -- join bảng CLB với điều kiện cùng mã CLB1
	join CAULACBO_TueLDT clb2 on td.MACLB2_0909 = clb2.MACLB_0909 -- join bảng CLB với điều kiện cùng mã CLB2
	where td.VONG_0909 <= 3 -- với điều kiện trận đấu tính đến vòng 3
	and ( td.MACLB1_0909 = (select top 1 bxh.MACLB_0909 from BANGXH_TueLDT bxh 
	-- và có mặt đội hạng thấp nhất tính đến hết vòng 3 - 2009
					where bxh.VONG_0909 = 3
					and bxh.NAM_0909 = 2009 
					order by bxh.HANG_0909 desc)
		 or td.MACLB2_0909 = (select top 1 bxh.MACLB_0909 from BANGXH_TueLDT bxh
					where bxh.VONG_0909 = 3
					and bxh.NAM_0909 = 2009 
					order by bxh.HANG_0909 desc))	
END

--Gọi Procedure
Exec Bai4a7_13_TueLDT

/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- a. Bài tập về Store Procedure
-- 8. Ứng với mỗi bảng trong CSDL QLBongDa, bạn hãy viết 4 stored Procedure ứng với 4 công việc 
-- Insert/Update/Delete/Select. Trong đó Stored procedure update và delete lấy khóa chính 
-- làm tham số

/* Bảng QUOCGIA_TueLDT */
-- QUOCGIA_TueLDT_INSERT
CREATE PROCEDURE Bai4a8_QUOCGIA_TueLDT_INSERT
	@MAQG_TueLDT_0909 VARCHAR(5), @TENQG_TueLDT_0909 NVARCHAR(60)
AS
BEGIN
	INSERT INTO QUOCGIA_TueLDT(MAQG_0909, TENQG_0909)
	VALUES (@MAQG_TueLDT_0909, @TENQG_TueLDT_0909)
END;
-- Gọi Procedure
SELECT * FROM QUOCGIA_TueLDT;
EXEC Bai4a8_QUOCGIA_TueLDT_INSERT 'JAP', N'Japan';
SELECT * FROM QUOCGIA_TueLDT;

-- QUOCGIA_TueLDT_UPDATE
CREATE PROCEDURE Bai4a8_QUOCGIA_TueLDT_UPDATE
	@MAQG_TueLDT_0909 VARCHAR(5), @TENQG_TueLDT_0909 NVARCHAR(60)
AS
BEGIN
	UPDATE QUOCGIA_TueLDT
	SET TENQG_0909 = @TENQG_TueLDT_0909
	WHERE MAQG_0909 = @MAQG_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM QUOCGIA_TueLDT;
EXEC Bai4a8_QUOCGIA_TueLDT_UPDATE 'JAP', N'Nhật Bản';
SELECT * FROM QUOCGIA_TueLDT;

-- QUOCGIA_TueLDT_DELETE
CREATE PROCEDURE Bai4a8_QUOCGIA_TueLDT_DELETE
	@MAQG_TueLDT_0909 VARCHAR(5)
AS
BEGIN
	DELETE QUOCGIA_TueLDT
	WHERE MAQG_0909 = @MAQG_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM QUOCGIA_TueLDT;
EXEC Bai4a8_QUOCGIA_TueLDT_DELETE 'JAP';
SELECT * FROM QUOCGIA_TueLDT;

-- QUOCGIA_TueLDT_SELECT
CREATE PROCEDURE Bai4a8_QUOCGIA_TueLDT_SELECT
AS
BEGIN
	SELECT * FROM QUOCGIA_TueLDT
END;
-- Gọi Procedure
EXEC Bai4a8_QUOCGIA_TueLDT_SELECT;

/******************************************************/

/* Bảng TINH_TueLDT */
-- TINH_TueLDT_INSERT
CREATE PROCEDURE Bai4a8_TINH_TueLDT_INSERT
	@MATINH_TueLDT_0909 VARCHAR(5), @TENTINH_TueLDT_0909 NVARCHAR(100)
AS
BEGIN
	INSERT INTO TINH_TueLDT(MATINH_0909, TENTINH_0909)
	VALUES (@MATINH_TueLDT_0909, @TENTINH_TueLDT_0909)
END;
-- Gọi Procedure
SELECT * FROM TINH_TueLDT;
EXEC Bai4a8_TINH_TueLDT_INSERT 'HT', N'HaTinh';
SELECT * FROM TINH_TueLDT;

-- TINH_TueLDT_UPDATE
CREATE PROCEDURE Bai4a8_TINH_TueLDT_UPDATE
	@MATINH_TueLDT_0909 VARCHAR(5), @TENTINH_TueLDT_0909 NVARCHAR(100)
AS
BEGIN
	UPDATE TINH_TueLDT
	SET TENTINH_0909 = @TENTINH_TueLDT_0909
	WHERE MATINH_0909 = @MATINH_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM TINH_TueLDT;
EXEC Bai4a8_TINH_TueLDT_UPDATE 'HT', N'Hà Tĩnh';
SELECT * FROM TINH_TueLDT;

-- TINH_TueLDT_DELETE
CREATE PROCEDURE Bai4a8_TINH_TueLDT_DELETE
	@MATINH_TueLDT_0909 VARCHAR(5)
AS
BEGIN
	DELETE TINH_TueLDT
	WHERE MATINH_0909 = @MATINH_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM TINH_TueLDT;
EXEC Bai4a8_TINH_TueLDT_DELETE 'HT';
SELECT * FROM TINH_TueLDT;

-- TINH_TueLDT_SELECT
CREATE PROCEDURE Bai4a8_TINH_TueLDT_SELECT
AS
BEGIN
	SELECT * FROM TINH_TueLDT
END;
-- Gọi Procedure
EXEC Bai4a8_TINH_TueLDT_SELECT;

/******************************************************/

/* Bảng SANVD_TueLDT */
-- SANVD_TueLDT_INSERT
CREATE PROCEDURE Bai4a8_SANVD_TueLDT_INSERT
	@MASAN_TueLDT_0909 VARCHAR(5), @TENSAN_TueLDT_0909 NVARCHAR(100), @DIACHI_TueLDT_0909 NVARCHAR(200)
AS
BEGIN
	INSERT INTO SANVD_TueLDT(MASAN_0909, TENSAN_0909, DIACHI_0909)
	VALUES (@MASAN_TueLDT_0909, @TENSAN_TueLDT_0909, @DIACHI_TueLDT_0909)
END;
-- Gọi Procedure
SELECT * FROM SANVD_TueLDT;
EXEC Bai4a8_SANVD_TueLDT_INSERT 'CN', N'Campnouu', N'C/ dArístides Maillol, 12, Les Corts, 08028 Barcelona';
SELECT * FROM SANVD_TueLDT;

-- SANVD_TueLDT_UPDATE
CREATE PROCEDURE Bai4a8_SANVD_TueLDT_UPDATE
	@MASAN_TueLDT_0909 VARCHAR(5), @TENSAN_TueLDT_0909 NVARCHAR(100), @DIACHI_TueLDT_0909 NVARCHAR(200)
AS
BEGIN
	UPDATE SANVD_TueLDT
	SET TENSAN_0909 = @TENSAN_TueLDT_0909, DIACHI_0909 = @DIACHI_TueLDT_0909
	WHERE MASAN_0909 = @MASAN_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM SANVD_TueLDT;
EXEC Bai4a8_SANVD_TueLDT_UPDATE 'CN', N'Campnou', N'C/ dArístides Maillol, 12, Les Corts, 08028 Barcelona';
SELECT * FROM SANVD_TueLDT;

-- SANVD_TueLDT_DELETE
CREATE PROCEDURE Bai4a8_SANVD_TueLDT_DELETE
	@MASAN_TueLDT_0909 VARCHAR(5) AS
BEGIN
	DELETE SANVD_TueLDT
	WHERE MASAN_0909 = @MASAN_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM SANVD_TueLDT;
EXEC Bai4a8_SANVD_TueLDT_DELETE 'CN';
SELECT * FROM SANVD_TueLDT;

-- SANVD_TueLDT_SELECT
CREATE PROCEDURE Bai4a8_SANVD_TueLDT_SELECT
AS
BEGIN
	SELECT * FROM SANVD_TueLDT
END;
-- Gọi Procedure
EXEC Bai4a8_SANVD_TueLDT_SELECT;

/******************************************************/

/* Bảng HUANLUYENVIEN_TueLDT */
-- HUANLUYENVIEN_TueLDT_INSERT
CREATE PROCEDURE Bai4a8_HUANLUYENVIEN_TueLDT_INSERT
	@MAHLV_TueLDT_0909 VARCHAR(5),
	@TENHLV_TueLDT_0909 NVARCHAR(100),
	@NGAYSINH_TueLDT_0909 DATETIME,
	@DIACHI_TueLDT_0909 NVARCHAR(200),
	@DIENTHOAI_TueLDT_0909 NVARCHAR(20),
	@MAQG_TueLDT_0909 VARCHAR(5)
AS
BEGIN
	INSERT INTO HUANLUYENVIEN_TueLDT(MAHLV_0909, TENHLV_0909, 
				NGAYSINH_0909, DIACHI_0909, DIENTHOAI_0909, MAQG_0909)
	VALUES (@MAHLV_TueLDT_0909, @TENHLV_TueLDT_0909, @NGAYSINH_TueLDT_0909, 
			@DIACHI_TueLDT_0909, @DIENTHOAI_TueLDT_0909, @MAQG_TueLDT_0909)
END;
-- Gọi Procedure
SELECT * FROM HUANLUYENVIEN_TueLDT;
EXEC Bai4a8_HUANLUYENVIEN_TueLDT_INSERT HLV07, N'Lê Tuệ', '11-09-2003', NULL, '0835224458', 'VN';
SELECT * FROM HUANLUYENVIEN_TueLDT;

-- HUANLUYENVIEN_TueLDT_UPDATE
CREATE PROCEDURE Bai4a8_HUANLUYENVIEN_TueLDT_UPDATE
	@MAHLV_TueLDT_0909 VARCHAR(5),
	@TENHLV_TueLDT_0909 NVARCHAR(100),
	@NGAYSINH_TueLDT_0909 DATETIME,
	@DIACHI_TueLDT_0909 NVARCHAR(200),
	@DIENTHOAI_TueLDT_0909 NVARCHAR(20),
	@MAQG_TueLDT_0909 VARCHAR(5)
AS
BEGIN
	UPDATE HUANLUYENVIEN_TueLDT
	SET TENHLV_0909 = @TENHLV_TueLDT_0909,
		NGAYSINH_0909 = @NGAYSINH_TueLDT_0909,
		DIACHI_0909 = @DIACHI_TueLDT_0909,
		DIENTHOAI_0909 = @DIENTHOAI_TueLDT_0909,
		MAQG_0909 = @MAQG_TueLDT_0909
	WHERE MAHLV_0909 = @MAHLV_TueLDT_0909
END;

-- Gọi Procedure
SELECT * FROM HUANLUYENVIEN_TueLDT;
EXEC Bai4a8_HUANLUYENVIEN_TueLDT_UPDATE HLV07, N'Lê Đình Trí Tuệ', '12-09-2003', NULL, '0835224458', 'VN';
SELECT * FROM HUANLUYENVIEN_TueLDT;

-- HUANLUYENVIEN_TueLDT_DELETE
CREATE PROCEDURE Bai4a8_HUANLUYENVIEN_TueLDT_DELETE
	@MAHLV_TueLDT_0909 VARCHAR(5)
AS
BEGIN
	DELETE HUANLUYENVIEN_TueLDT
	WHERE MAHLV_0909 = @MAHLV_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM HUANLUYENVIEN_TueLDT;
EXEC Bai4a8_HUANLUYENVIEN_TueLDT_DELETE HLV07;
SELECT * FROM HUANLUYENVIEN_TueLDT;

-- HUANLUYENVIEN_TueLDT_SELECT
CREATE PROCEDURE Bai4a8_HUANLUYENVIEN_TueLDT_SELECT
AS
BEGIN
	SELECT * FROM HUANLUYENVIEN_TueLDT
END;
-- Gọi Procedure
EXEC Bai4a8_HUANLUYENVIEN_TueLDT_SELECT;

/******************************************************/

/* Bảng CAULACBO_TueLDT */
-- CAULACBO_TueLDT_INSERT
CREATE PROCEDURE Bai4a8_CAULACBO_TueLDT_INSERT
	@MACLB_TueLDT_0909 VARCHAR(5),
	@TENCLB_TueLDT_0909 NVARCHAR(100),
	@MASAN_TueLDT_0909 VARCHAR(5),
	@MATINH_TueLDT_0909 VARCHAR(5)
AS
BEGIN
	INSERT INTO CAULACBO_TueLDT(MACLB_0909, TENCLB_0909, MASAN_0909, MATINH_0909)
	VALUES (@MACLB_TueLDT_0909, @TENCLB_TueLDT_0909, @MASAN_TueLDT_0909, @MATINH_TueLDT_0909)
END;
-- Gọi Procedure
SELECT * FROM CAULACBO_TueLDT;
EXEC Bai4a8_CAULACBO_TueLDT_INSERT 'FCB', N'Barca', 'CL', 'DN';
SELECT * FROM CAULACBO_TueLDT;

-- CAULACBO_TueLDT_UPDATE
CREATE PROCEDURE Bai4a8_CAULACBO_TueLDT_UPDATE
	@MACLB_TueLDT_0909 VARCHAR(5),
	@TENCLB_TueLDT_0909 NVARCHAR(100),
	@MASAN_TueLDT_0909 VARCHAR(5),
	@MATINH_TueLDT_0909 VARCHAR(5)
AS
BEGIN
	UPDATE CAULACBO_TueLDT
	SET TENCLB_0909 = @TENCLB_TueLDT_0909,
		MASAN_0909 = @MASAN_TueLDT_0909,
		MATINH_0909 = @MATINH_TueLDT_0909
	WHERE MACLB_0909 = @MACLB_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM CAULACBO_TueLDT;
EXEC Bai4a8_CAULACBO_TueLDT_UPDATE 'FCB', N'Barcelona', 'CL', 'DN';
SELECT * FROM CAULACBO_TueLDT;

-- CAULACBO_TueLDT_DELETE
CREATE PROCEDURE Bai4a8_CAULACBO_TueLDT_DELETE
	@MACLB_TueLDT_0909 VARCHAR(5)
AS
BEGIN
	DELETE CAULACBO_TueLDT
	WHERE MACLB_0909 = @MACLB_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM CAULACBO_TueLDT;
EXEC Bai4a8_CAULACBO_TueLDT_DELETE 'FCB';
SELECT * FROM CAULACBO_TueLDT;

-- CAULACBO_TueLDT_SELECT
CREATE PROCEDURE Bai4a8_CAULACBO_TueLDT_SELECT
AS
BEGIN
	SELECT * FROM CAULACBO_TueLDT
END;
-- Gọi Procedure
EXEC Bai4a8_CAULACBO_TueLDT_SELECT;

/******************************************************/

/* Bảng HLV_CLB_TueLDT */
-- HLV_CLB_TueLDT_INSERT
CREATE PROCEDURE Bai4a8_HLV_CLB_TueLDT_INSERT
	@MAHLV_TueLDT_0909 VARCHAR(5), 
	@MACLB_TueLDT_0909 VARCHAR(5),
	@VAITRO_TueLDT_0909 NVARCHAR(100)
AS
BEGIN
	INSERT INTO HLV_CLB_TueLDT
	VALUES (@MAHLV_TueLDT_0909, @MACLB_TueLDT_0909, @VAITRO_TueLDT_0909)
END;
-- Gọi Procedure
SELECT * FROM HLV_CLB_TueLDT;
EXEC Bai4a8_HLV_CLB_TueLDT_INSERT 'HLV05', 'KKH', N'HLV thể lực';
SELECT * FROM HLV_CLB_TueLDT;

-- HLV_CLB_TueLDT_UPDATE
CREATE PROCEDURE Bai4a8_HLV_CLB_TueLDT_UPDATE
	@MAHLV_TueLDT_0909 VARCHAR(5), 
	@MACLB_TueLDT_0909 VARCHAR(5),
	@VAITRO_TueLDT_0909 NVARCHAR(100)
AS
BEGIN
	UPDATE HLV_CLB_TueLDT
	SET VAITRO_0909 = @VAITRO_TueLDT_0909
	WHERE MAHLV_0909 = @MAHLV_TueLDT_0909 AND MACLB_0909 = @MACLB_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM HLV_CLB_TueLDT;
EXEC Bai4a8_HLV_CLB_TueLDT_UPDATE 'HLV05', 'KKH', N'HLV phụ';
SELECT * FROM HLV_CLB_TueLDT;

-- HLV_CLB_TueLDT_DELETE
CREATE PROCEDURE Bai4a8_HLV_CLB_TueLDT_DELETE
	@MAHLV_TueLDT_0909 VARCHAR(5), 
	@MACLB_TueLDT_0909 VARCHAR(5)
AS
BEGIN
	DELETE HLV_CLB_TueLDT
	WHERE MAHLV_0909 = @MAHLV_TueLDT_0909 AND MACLB_0909 = @MACLB_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM HLV_CLB_TueLDT;
EXEC Bai4a8_HLV_CLB_TueLDT_DELETE 'HLV05', 'KKH';
SELECT * FROM HLV_CLB_TueLDT;

-- HLV_CLB_TueLDT_SELECT
CREATE PROCEDURE Bai4a8_HLV_CLB_TueLDT_SELECT
AS
BEGIN
	SELECT * FROM HLV_CLB_TueLDT
END;
-- Gọi Procedure
EXEC Bai4a8_CAULACBO_TueLDT_SELECT;


/* Bảng CAUTHU_TueLDT */
-- CAUTHU_TueLDT_INSERT
CREATE PROCEDURE Bai4a8_CAUTHU_TueLDT_INSERT
	-- MACT_0909 tăng tự động: MACT_0909 NUMERIC IDENTITY(1,1)
	@HOTEN_TueLDT_0909 NVARCHAR(100),
	@VITRI_TueLDT_0909 NVARCHAR(20),
	@NGAYSINH_TueLDT_0909 DATETIME,
	@DIACHI_TueLDT_0909 NVARCHAR(200),
	@MACLB_TueLDT_0909 VARCHAR(5),
	@MAQG_TueLDT_0909 VARCHAR(5),
	@SO_TueLDT_0909 INT
AS
BEGIN
	INSERT INTO CAUTHU_TueLDT(HOTEN_0909, VITRI_0909, NGAYSINH_0909, 
				DIACHI_0909, MACLB_0909, MAQG_0909, SO_0909)
	VALUES (@HOTEN_TueLDT_0909, @VITRI_TueLDT_0909, @NGAYSINH_TueLDT_0909, 
			@DIACHI_TueLDT_0909, @MACLB_TueLDT_0909, @MAQG_TueLDT_0909, @SO_TueLDT_0909)
END;
-- Gọi Procedure
SELECT * FROM CAUTHU_TueLDT;
EXEC Bai4a8_CAUTHU_TueLDT_INSERT N'Leo Messi', N'Tiền đạo', '1987-06-14', NULL, 'GDT', 'VN', 10;
SELECT * FROM CAUTHU_TueLDT;

-- CAUTHU_TueLDT_UPDATE
CREATE PROCEDURE Bai4a8_CAUTHU_TueLDT_UPDATE
	@MACT_TueLDT_0909 NUMERIC,
	@HOTEN_TueLDT_0909 NVARCHAR(100),
	@VITRI_TueLDT_0909 NVARCHAR(20),
	@NGAYSINH_TueLDT_0909 DATETIME,
	@DIACHI_TueLDT_0909 NVARCHAR(200),
	@MACLB_TueLDT_0909 VARCHAR(5),
	@MAQG_TueLDT_0909 VARCHAR(5),
	@SO_TueLDT_0909 INT
AS
BEGIN
	UPDATE CAUTHU_TueLDT
	SET HOTEN_0909 = @HOTEN_TueLDT_0909,
		VITRI_0909 = @VITRI_TueLDT_0909,
		NGAYSINH_0909 = @NGAYSINH_TueLDT_0909,
		DIACHI_0909 = @DIACHI_TueLDT_0909,
		MACLB_0909 = @MACLB_TueLDT_0909,
		MAQG_0909 = @MAQG_TueLDT_0909,
		SO_0909 = @SO_TueLDT_0909
	WHERE MACT_0909 = @MACT_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM CAUTHU_TueLDT;
EXEC Bai4a8_CAUTHU_TueLDT_UPDATE 10, N'Lionel Messi', N'Tiền đạo', '1987-06-24', NULL, 'GDT', 'VN', 10;
SELECT * FROM CAUTHU_TueLDT;

-- CAUTHU_TueLDT_DELETE
CREATE PROCEDURE Bai4a8_CAUTHU_TueLDT_DELETE
	@MACT_TueLDT_0909 NUMERIC
AS
BEGIN
	DELETE CAUTHU_TueLDT
	WHERE MACT_0909 = @MACT_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM CAUTHU_TueLDT;
EXEC Bai4a8_CAUTHU_TueLDT_DELETE 10;
SELECT * FROM CAUTHU_TueLDT;

-- CAUTHU_TueLDT_SELECT
CREATE PROCEDURE Bai4a8_CAUTHU_TueLDT_SELECT
AS
BEGIN
	SELECT * FROM CAUTHU_TueLDT
END;
-- Gọi Procedure
EXEC Bai4a8_CAUTHU_TueLDT_SELECT;

/******************************************************/

/* Bảng TRANDAU_TueLDT */
-- TRANDAU_TueLDT_INSERT
CREATE PROCEDURE Bai4a8_TRANDAU_TueLDT_INSERT
	-- MATRAN_0909 tăng tự động: MATRAN_0909 NUMERIC IDENTITY(1,1)
	@NAM_TueLDT_0909 INT, 
	@VONG_TueLDT_0909 INT, 
	@NGAYTD_TueLDT_0909 DATETIME,
	@MACLB1_TueLDT_0909 VARCHAR(5), 
	@MACLB2_TueLDT_0909 VARCHAR(5),
	@MASAN_TueLDT_0909 VARCHAR(5), 
	@KETQUA_TueLDT_0909 VARCHAR(5)
AS
BEGIN
	INSERT INTO TRANDAU_TueLDT(NAM_0909, VONG_0909, NGAYTD_0909, 
				MACLB1_0909, MACLB2_0909, MASAN_0909, KETQUA_0909)
	VALUES (@NAM_TueLDT_0909, @VONG_TueLDT_0909, @NGAYTD_TueLDT_0909, 
			@MACLB1_TueLDT_0909, @MACLB2_TueLDT_0909, @MASAN_TueLDT_0909, @KETQUA_TueLDT_0909)
END;
-- Gọi Procedure
SELECT * FROM TRANDAU_TueLDT;
EXEC Bai4a8_TRANDAU_TueLDT_INSERT 2009, 5, '2009-09-20', 'SDN', 'HAGL', 'TH', '2-1';
SELECT * FROM TRANDAU_TueLDT;

-- TRANDAU_TueLDT_UPDATE
CREATE PROCEDURE Bai4a8_TRANDAU_TueLDT_UPDATE
	@MATRAN_TueLDT_0909 NUMERIC,
	@NAM_TueLDT_0909 INT, 
	@VONG_TueLDT_0909 INT, 
	@NGAYTD_TueLDT_0909 DATETIME,
	@MACLB1_TueLDT_0909 VARCHAR(5), 
	@MACLB2_TueLDT_0909 VARCHAR(5),
	@MASAN_TueLDT_0909 VARCHAR(5), 
	@KETQUA_TueLDT_0909 VARCHAR(5)
AS
BEGIN
	UPDATE TRANDAU_TueLDT
	SET NAM_0909 = @NAM_TueLDT_0909,
		VONG_0909 = @VONG_TueLDT_0909,
		NGAYTD_0909 = @NGAYTD_TueLDT_0909,
		MACLB1_0909 = @MACLB1_TueLDT_0909,
		MACLB2_0909 = @MACLB2_TueLDT_0909,
		MASAN_0909 = @MASAN_TueLDT_0909,
		KETQUA_0909 = @KETQUA_TueLDT_0909
	WHERE MATRAN_0909 = @MATRAN_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM TRANDAU_TueLDT;
EXEC Bai4a8_TRANDAU_TueLDT_UPDATE 9, 2009, 5, '2009-09-25', 'SDN', 'HAGL', 'TH', '2-0';
SELECT * FROM TRANDAU_TueLDT;

-- TRANDAU_TueLDT_DELETE
CREATE PROCEDURE Bai4a8_TRANDAU_TueLDT_DELETE
	@MATRAN_TueLDT_0909 NUMERIC
AS
BEGIN
	DELETE TRANDAU_TueLDT
	WHERE MATRAN_0909 = @MATRAN_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM TRANDAU_TueLDT;
EXEC Bai4a8_TRANDAU_TueLDT_DELETE 9;
SELECT * FROM TRANDAU_TueLDT;

-- TRANDAU_TueLDT_SELECT
CREATE PROCEDURE Bai4a8_TRANDAU_TueLDT_SELECT
AS
BEGIN
	SELECT * FROM TRANDAU_TueLDT;
END;
-- Gọi Procedure
EXEC Bai4a8_TRANDAU_TueLDT_SELECT;

/******************************************************/

/* Bảng BANGXH_TueLDT */
-- BANGXH_TueLDT_INSERT
CREATE PROCEDURE Bai4a8_BANGXH_TueLDT_INSERT
	@MACLB_TueLDT_0909 VARCHAR(5),
	@NAM_TueLDT_0909 INT,
	@VONG_TueLDT_0909 INT,
	@SOTRAN_TueLDT_0909 INT,
	@THANG_TueLDT_0909 INT,
	@HOA_TueLDT_0909 INT,
	@THUA_TueLDT_0909 INT,
	@HIEUSO_TueLDT_0909 VARCHAR(5),
	@DIEM_TueLDT_0909 INT,
	@HANG_TueLDT_0909 INT
AS
BEGIN
	INSERT INTO BANGXH_TueLDT(MACLB_0909, NAM_0909, VONG_0909, SOTRAN_0909, 
				THANG_0909, HOA_0909, THUA_0909, HIEUSO_0909, DIEM_0909, HANG_0909)
	VALUES (@MACLB_TueLDT_0909, @NAM_TueLDT_0909, @VONG_TueLDT_0909, 
			@SOTRAN_TueLDT_0909, @THANG_TueLDT_0909, 
			@HOA_TueLDT_0909, @THUA_TueLDT_0909, @HIEUSO_TueLDT_0909, 
			@DIEM_TueLDT_0909, @HANG_TueLDT_0909)
END;
-- Gọi Procedure
SELECT * FROM BANGXH_TueLDT;
EXEC Bai4a8_BANGXH_TueLDT_INSERT 'BBD', 2009, 5, 3, 2, 1, 1, '5-4', 2, 5;
SELECT * FROM BANGXH_TueLDT;

-- BANGXH_TueLDT_UPDATE
CREATE PROCEDURE Bai4a8_BANGXH_TueLDT_UPDATE
	@MACLB_TueLDT_0909 VARCHAR(5),
	@NAM_TueLDT_0909 INT,
	@VONG_TueLDT_0909 INT,
	@SOTRAN_TueLDT_0909 INT,
	@THANG_TueLDT_0909 INT,
	@HOA_TueLDT_0909 INT,
	@THUA_TueLDT_0909 INT,
	@HIEUSO_TueLDT_0909 VARCHAR(5),
	@DIEM_TueLDT_0909 INT,
	@HANG_TueLDT_0909 INT
AS
BEGIN
	UPDATE BANGXH_TueLDT
	SET SOTRAN_0909 = @SOTRAN_TueLDT_0909,
		THANG_0909 = @THANG_TueLDT_0909,
		HOA_0909 = @HOA_TueLDT_0909,
		THUA_0909 = @THUA_TueLDT_0909,
		HIEUSO_0909 = @HIEUSO_TueLDT_0909,
		DIEM_0909 = @DIEM_TueLDT_0909,
		HANG_0909 = @HANG_TueLDT_0909
	WHERE MACLB_0909 = @MACLB_TueLDT_0909 AND NAM_0909 = @NAM_TueLDT_0909 AND VONG_0909 = @VONG_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM BANGXH_TueLDT;
EXEC Bai4a8_BANGXH_TueLDT_UPDATE 'BBD', 2009, 5, 4, 1, 1, 2, '1-4', 1, 7;
SELECT * FROM BANGXH_TueLDT;

-- BANGXH_TueLDT_DELETE
CREATE PROCEDURE Bai4a8_BANGXH_TueLDT_DELETE
	@MACLB_TueLDT_0909 VARCHAR(5),
	@NAM_TueLDT_0909 INT,
	@VONG_TueLDT_0909 INT
AS
BEGIN
	DELETE BANGXH_TueLDT
	WHERE MACLB_0909 = @MACLB_TueLDT_0909 AND NAM_0909 = @NAM_TueLDT_0909 AND VONG_0909 = @VONG_TueLDT_0909
END;
-- Gọi Procedure
SELECT * FROM BANGXH_TueLDT;
EXEC Bai4a8_BANGXH_TueLDT_DELETE 'BBD', 2009, 5;
SELECT * FROM BANGXH_TueLDT;

-- BANGXH_TueLDT_SELECT
CREATE PROCEDURE Bai4a8_BANGXH_TueLDT_SELECT
AS
BEGIN
	SELECT * FROM BANGXH_TueLDT
END;
-- Gọi Procedure
EXEC Bai4a8_BANGXH_TueLDT_SELECT;

/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Bài tập về Trigger
-- 1. Khi thêm cầu thủ mới, kiểm tra vị trí trên sân của cần thủ chỉ thuộc một 
-- trong các vị trí sau: Thủ môn, Tiền đạo, Tiền vệ, Trung vệ, Hậu vệ

CREATE TRIGGER Bai4b1_TueLDT ON CAUTHU_TueLDT -- Tạo trigger
FOR INSERT 
AS
BEGIN
	DECLARE @vitri_TueLDT NVARCHAR(20)
	SELECT @vitri_TueLDT = VITRI_0909 FROM inserted

	IF @vitri_TueLDT IN (N'Thủ môn', N'Tiền đạo', N'Tiền vệ', N'Trung vệ', N'Hậu vệ')
		BEGIN
			PRINT N'Thêm cầu thủ mới thành công'
			-- Nếu thỏa mãn yêu cầu đề bài thì báo thành công
		END
	ELSE
		ROLLBACK TRANSACTION
END;
DROP TRIGGER Bai4b1_TueLDT

-- exec
-- Thêm dữ liệu vào bảng Cầu Thủ
INSERT INTO CAUTHU_TueLDT(HOTEN_0909, VITRI_0909, NGAYSINH_0909, DIACHI_0909, 
							MACLB_0909, MAQG_0909, SO_0909)
VALUES (N'Lê Đình Trí Tuệ', N'Tiền vệ', '2003-09-20', NULL, 'SDN', 'VN', 9);

/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Bài tập về Trigger
-- 2. Khi thêm cầu thủ mới, kiểm tra số áo của cầu thủ thuộc 
-- cùng một câu lạc bộ phải khác nhau

CREATE TRIGGER Bai4b2_TueLDT ON CAUTHU_TueLDT
FOR INSERT
AS
BEGIN
	DECLARE @maclb_TueLDT VARCHAR(5), @so INT
	SELECT @maclb_TueLDT = MACLB_0909, @so = SO_0909 FROM inserted

	IF (SELECT COUNT(*) FROM CAUTHU_TueLDT 
		WHERE MACLB_0909 = @maclb_TueLDT AND SO_0909 = @so) > 1 
		-- đã tồn tại cầu thủ
		ROLLBACK TRANSACTION
	ELSE
		BEGIN
			-- In ra thông báo thành công
			PRINT N'Thêm cầu thủ mới thành công'
		END
END;
-- exec 
-- Thêm dữ liệu vào bảng Cầu Thủ
INSERT INTO CAUTHU_TueLDT(HOTEN_0909, VITRI_0909, NGAYSINH_0909, DIACHI_0909, 
						MACLB_0909, MAQG_0909, SO_0909)
VALUES (N'Lê Văn A', N'Hậu vệ', '2011-11-11', NULL, 'BBD', 'VN', 11);


/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Bài tập về Trigger
-- 3. Khi thêm thông tin cầu thủ thì in ra câu thông báo 
-- bằng Tiếng Việt ‘Đã thêm cầu thủ mới’

CREATE TRIGGER Bai4b3_TueLDT ON CAUTHU_TueLDT
FOR INSERT
AS
BEGIN
	-- In ra thông báo đã thêm cầu thủ mới
	PRINT N'Đã thêm cầu thủ mới'
END;
-- exec
SELECT * FROM CAUTHU_TueLDT;
-- Thêm dữ liệu vào bảng Cầu Thủ
INSERT INTO CAUTHU_TueLDT(HOTEN_0909, VITRI_0909, NGAYSINH_0909, DIACHI_0909, 
						MACLB_0909, MAQG_0909, SO_0909)
VALUES (N'Trần Văn Huhu', N'Tiền Đạo', '1901-01-01', NULL, 'SDN', 'VN', 11);

/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Bài tập về Trigger
-- 4. Khi thêm cầu thủ mới, kiểm tra số lượng cầu thủ nước ngoài 
-- ở mỗi câu lạc bộ chỉ được phép đăng ký tối đa 8 cầu thủ

CREATE TRIGGER Bai4b4_TueLDT ON CAUTHU_TueLDT -- Tạo trigger
FOR INSERT
AS
BEGIN
	DECLARE @maclb_TueLDT VARCHAR(5), @maqg_TueLDT VARCHAR(5)
	SELECT @maclb_TueLDT = MACLB_0909, @maqg_TueLDT = MAQG_0909 FROM inserted
	-- Kiểm tra theo yêu cầu đề bài
	IF (SELECT COUNT(*) FROM CAUTHU_TueLDT WHERE MACLB_0909 = @maclb_TueLDT 
				AND MAQG_0909 <> 'VN' GROUP BY MACLB_0909) <= 8
		BEGIN
			-- In ra thông báo đã thêm cầu thủ mới thành công
			PRINT N'Thêm cầu thủ mới thành công'
		END
	ELSE
		ROLLBACK TRANSACTION
END;

-- exec
-- Thêm dữ liệu vào bảng Cầu Thủ
INSERT INTO CAUTHU_TueLDT(HOTEN_0909, VITRI_0909, NGAYSINH_0909, DIACHI_0909, 
						MACLB_0909, MAQG_0909, SO_0909)
VALUES (N'Nguyễn Văn Hihi', N'Hậu vệ', '1922-09-09', NULL, 'SDN', 'VN', 5);

/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Bài tập về Trigger
-- 5. Khi thêm tên quốc gia, kiểm tra tên quốc gia không được trùng -- với tên quốc gia đã có
CREATE TRIGGER Bai4b5_TueLDT ON QUOCGIA_TueLDT -- Tạo trigger
FOR INSERT
AS
BEGIN
	DECLARE @tenqg_TueLDT NVARCHAR(60)
	SELECT @tenqg_TueLDT = TENQG_0909 FROM inserted
	-- Kiểm tra theo yêu cầu đề bài
	IF (SELECT COUNT(*) FROM QUOCGIA_TueLDT WHERE TENQG_0909 = @tenqg_TueLDT) > 1
		ROLLBACK TRANSACTION
	ELSE
		BEGIN
			-- In ra thông báo đã thêm quốc gia mới thành công
			PRINT N'Thêm quốc gia mới thành công'
		END
END;

-- exec
-- Thêm dữ liệu vào bảng Quốc Gia
INSERT INTO QUOCGIA_TueLDT(MAQG_0909, TENQG_0909)
	   VALUES ('KR', N'Hàn Quốc');

/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Bài tập về Trigger
-- 6. Khi thêm tên tỉnh thành, kiểm tra tên tỉnh thành 
-- không được trùng với tên tỉnh thành đã có

CREATE TRIGGER Bai4b6_TueLDT ON TINH_TueLDT -- Tạo trigger
FOR INSERT
AS
BEGIN
	DECLARE @tentinh_TueLDT NVARCHAR(100)
	SELECT @tentinh_TueLDT = TENTINH_0909 FROM inserted
	-- Kiểm tra theo yêu cầu đề bài
	IF (SELECT COUNT(*) FROM TINH_TueLDT WHERE TENTINH_0909 = @tentinh_TueLDT) > 1
		ROLLBACK TRANSACTION
	ELSE
		BEGIN
			-- In ra thông báo thêm mới thành công
			PRINT N'Thêm tỉnh mới thành công'
		END
END;

-- exec
-- Thêm dữ liệu vào bảng Tỉnh
INSERT INTO TINH_TueLDT(MATINH_0909, TENTINH_0909)
	   VALUES ('HT', N'Hà Tĩnh');

/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Bài tập về Trigger
-- 7. Không cho sửa kết quả của các trận đã diễn ra

CREATE TRIGGER Bai4b7_TueLDT_11 -- Tạo trigger
ON TRANDAU_TueLDT
INSTEAD OF UPDATE
AS
BEGIN
	-- In ra thông báo không được phép sửa nội dung các trận đã diễn ra
	RAISERROR('Không được phép sửa đổi nội dung các trận đã diễn ra', 16, 1)
END

-- Update nội dung vào bảng trận đấu
UPDATE TRANDAU_TueLDT
SET KETQUA_0909 = '2-0'
WHERE MATRAN_0909 = 7


/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Bài tập về Trigger
-- 8. Khi phân công huấn luyện viên cho câu lạc bộ:
-- a. Kiểm tra vai trò của huấn luyện viên chỉ thuộc một trong các vai trò sau: HLV chính, 
-- HLV phụ, HLV thể lực, HLV thủ môn
CREATE TRIGGER Bai4b8a_TueLDT ON HLV_CLB_TueLDT -- Tạo trigger
FOR INSERT 
AS
BEGIN
	DECLARE @vaitro_TueLDT NVARCHAR(100)
	SELECT @vaitro_TueLDT = VAITRO_0909 FROM inserted
	-- Kiểm tra theo yêu cầu của đề bài
	IF @vaitro_TueLDT IN (N'HLV Chính', N'HLV phụ', N'HLV thể lực', N'HLV thủ môn')
		BEGIN
			-- In ra thông báo thành công
			PRINT N'Phân công vai trò huấn luyện viên thành công'
		END
	ELSE
		ROLLBACK TRANSACTION
END;
-- exec
-- Thêm dữ liệu vào bảng Huấn Luyện Viên Câu Lạc Bộ
INSERT INTO HLV_CLB_TueLDT(MAHLV_0909, MACLB_0909, VAITRO_0909)
	   VALUES ('HLV01', 'TPY', N'HLV thủ môn');




/******************************************************/

-- b. Kiểm tra mỗi câu lạc bộ chỉ có tối đa 2 HLV chính
CREATE TRIGGER Bai4b8b_TueLDT ON HLV_CLB_TueLDT -- Tạo trigger
FOR INSERT
AS
BEGIN
	DECLARE @maclb_TueLDT VARCHAR(5)
	SELECT @maclb_TueLDT = MACLB_0909 FROM inserted
	-- Kiểm tra theo yêu cầu của đề bài
	IF (SELECT COUNT(*) FROM HLV_CLB_TueLDT WHERE MACLB_0909 = @maclb_TueLDT 
	AND VAITRO_0909 = N'HLV Chính' GROUP BY MACLB_0909) <= 2
		BEGIN
			-- In ra thông báo thành công
			PRINT N'Phân công vai trò huấn luyện viên thành công'
		END
	ELSE
		ROLLBACK TRANSACTION
END;
-- Thêm dữ liệu vào bảng Huấn Luyện Viên Câu Lạc Bộ
INSERT INTO HLV_CLB_TueLDT(MAHLV_0909, MACLB_0909, VAITRO_0909)
	   VALUES ('HLV02', 'BBD', N'HLV Chính');

/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Bài tập về Trigger
-- 9. Khi thêm mới một câu lạc bộ thì kiểm tra xem đã có câu lạc bộ 
-- trùng tên với câu lạc bộ vừa được thêm hay không?
-- a. Chỉ thông báo vẫn cho insert
CREATE TRIGGER Bai4b9a_TueLDT
ON CAULACBO_TueLDT
AFTER INSERT
AS
BEGIN
    IF (SELECT COUNT(*) FROM inserted i
        JOIN CAULACBO_TueLDT c ON i.TENCLB_0909 = c.TENCLB_0909) > 1
    BEGIN
        RAISERROR ('Câu lạc bộ với tên trùng lặp đã tồn tại.', 16, 1);
    END
    ELSE
    BEGIN
        PRINT 'Thông báo: Câu lạc bộ được thêm mới thành công.';
    END
END;


-- Thêm dữ liệu vào bảng Câu Lạc Bộ
INSERT INTO CAULACBO_TueLDT(MACLB_0909, TENCLB_0909, MASAN_0909, MATINH_0909)
VALUES ('KKT', 'BECAMEX BÌNH DUONG', N'LA', N'GL');

/******************************************************/
-- b. Thông báo và không cho insert
CREATE TRIGGER Bai4b9b_TueLDT -- Tạo trigger
ON CAULACBO_TueLDT
INSTEAD OF INSERT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM CAULACBO_TueLDT WHERE TENCLB_0909 
		IN (SELECT TENCLB_0909 FROM INSERTED))
    BEGIN
        INSERT INTO CAULACBO_TueLDT (TENCLB_0909)
        SELECT MACLB_0909 FROM INSERTED;
        PRINT 'Thêm câu lạc bộ thành công.';
    END
    ELSE
    BEGIN
        PRINT 'Cau lac bo đa ton tai. Khong the them moi.';
        ROLLBACK; -- Hủy bỏ thao tác INSERT
    END
END;
-- Thêm dữ liệu vào bảng Câu Lạc Bộ
INSERT INTO CAULACBO_TueLDT(MACLB_0909, TENCLB_0909, MASAN_0909, MATINH_0909)
	   VALUES ('KKT', 'BECAMEX BÌNH DUONG', N'LA', N'GL');
	  

/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- b. Bài tập về Trigger
-- 10. Khi sửa tên cầu thủ cho một cầu thủ thì in ra:
-- a. Danh sách mã cầu thủ của các cầu thủ vừa được sửa
CREATE TRIGGER Bai4b10a_TueLDT -- Tạo trigger
ON CAUTHU_TueLDT
AFTER UPDATE
AS
BEGIN
    IF UPDATE(HOTEN_0909)
    BEGIN
	-- Đưa ra Danh sách mã cầu thủ của các cầu thủ vừa được sửa
        SELECT HOTEN_0909
        FROM INSERTED;
    END
END;
UPDATE CAUTHU_TueLDT
SET HOTEN_0909 = N'Ronaldo'
WHERE HOTEN_0909 = N'Le Tue'


/******************************************************/

-- b.  Danh sách mã cầu thủ vừa được sửa và tên cầu thủ mới
CREATE TRIGGER Bai4b10b_TueLDT -- Tạo trigger
ON CAUTHU_TueLDT
AFTER UPDATE
AS
BEGIN
    IF UPDATE(HOTEN_0909)
    BEGIN
	-- Đưa ra Danh sách mã cầu thủ vừa được sửa và tên cầu thủ mới
        SELECT MACT_0909, HOTEN_0909
        FROM INSERTED;
    END
END;

UPDATE CAUTHU_TueLDT
SET HOTEN_0909 = N'Le Tue'
WHERE HOTEN_0909 = N'Ronaldo'


/******************************************************/

-- c. Danh sách mã cầu thủ vừa được sửa và tên cầu thủ cũ

CREATE TRIGGER Bai4b10c_TueLDT -- Tạo trigger
ON CAUTHU_TueLDT
AFTER UPDATE
AS
BEGIN
    IF UPDATE(HOTEN_0909)
    BEGIN
	-- Đưa ra Danh sách mã cầu thủ vừa được sửa và tên cầu thủ cũ
        SELECT MACT_0909, HOTEN_0909
        FROM DELETED;
    END
END;

UPDATE CAUTHU_TueLDT
SET HOTEN_0909 = N'Ronaldo'
WHERE HOTEN_0909 = N'Le Tue'

/******************************************************/

-- d. Danh sách mã cầu thủ vừa được sửa và tên cầu thủ cũ và tên cầu thủ mới.

CREATE TRIGGER Bai4b10d_TueLDT -- Tạo trigger
ON CAUTHU_TueLDT
AFTER UPDATE
AS
BEGIN
    IF UPDATE(HOTEN_0909)
    BEGIN
	-- Đưa ra Danh sách mã cầu thủ vừa được sửa và tên cầu thủ cũ và tên cầu thủ mới.
        SELECT d.MACT_0909, d.HOTEN_0909 AS TenCu, i.HOTEN_0909 AS TenMoi
        FROM DELETED d
        INNER JOIN INSERTED i ON d.MACT_0909 = i.MACT_0909;
    END
END;

UPDATE CAUTHU_TueLDT
SET HOTEN_0909 = N'Le Tue'
WHERE HOTEN_0909 = N'Ronaldo'

/******************************************************/
-- e. Đưa ra câu thông báo bằng Tiếng Việt: “ Vừa sửa thông tin của cầu thủ có mã số XXX”, 
-- với XXX là mã cầu thủ vừa được sửaCREATE TRIGGER Bai4b10e_TueLDT -- Tạo trigger
ON CAUTHU_TueLDT
AFTER UPDATE
AS
BEGIN
    IF UPDATE(HOTEN_0909)
    BEGIN
        DECLARE @MaCauThu INT;
	--Đưa ra câu thông báo bằng Tiếng Việt: “ Vừa sửa thông tin của cầu thủ có mã số XXX”, 
        SELECT TOP 1 @MaCauThu = MACT_0909
        FROM INSERTED;

        PRINT 'Vua sua thong tin cua cau thu có ma so ' + CAST(@MaCauThu AS NVARCHAR(10));
    END
END;
UPDATE CAUTHU_TueLDT
SET HOTEN_0909 = N'Ronaldo'
WHERE HOTEN_0909 = N'Le Tue'

/******************************************************/
-- Bai thuc hanh so 4 - Tuan 15
-- Le Dinh Tri Tue - 0909 - 2023.1 - 865
-- c. Bài tập về Cursor
-- 1. Dùng lệnh print để in ra danh sách mã các cầu thủ, tên câu thủ, 
-- vị trí trên sân.
-- Khai báo cursor
DECLARE Bai4c1_TueLDT CURSOR FOR
SELECT MACT_0909, HOTEN_0909, VITRI_0909
FROM CAUTHU_TueLDT;
OPEN Bai4c1_TueLDT; -- Mở cursor
-- Khai báo biến để lưu trữ dữ liệu từ cursor
DECLARE @CauThuID_TueLDT INT, @TenCauThu_TueLDT NVARCHAR(255), @Vitri_TueLDT NVARCHAR(255);
-- Fetch dòng đầu tiên từ cursor vào biến
FETCH NEXT FROM Bai4c1_TueLDT INTO @CauThuID_TueLDT, @TenCauThu_TueLDT, @Vitri_TueLDT;
-- Duyệt qua từng dòng trong cursor
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Thực hiện các xử lý tùy thuộc vào dữ liệu từ cursor
    PRINT 'ID: ' + CAST(@CauThuID_TueLDT AS NVARCHAR(10)) + ', Ten cau thu: ' 
				+ @TenCauThu_TueLDT + ', Vi tri: ' + @Vitri_TueLDT;
    FETCH NEXT FROM Bai4c1_TueLDT INTO @CauThuID_TueLDT, @TenCauThu_TueLDT, @Vitri_TueLDT;
END
CLOSE Bai4c1_TueLDT;
DEALLOCATE Bai4c1_TueLDT;


/******************************************************/
-- 2. Dùng lệnh print để in ra danh sách mã câu lạc bộ, tên câu lạc bộ, tên sân vận động.
-- Khai báo cursor
DECLARE Bai4c2_TueLDT CURSOR FOR
SELECT CAULACBO_TueLDT.MACLB_0909, CAULACBO_TueLDT.TENCLB_0909, 
		SANVD_TueLDT.TENSAN_0909
FROM CAULACBO_TueLDT
JOIN SANVD_TueLDT ON SANVD_TueLDT.MASAN_0909 = CAULACBO_TueLDT.MASAN_0909
OPEN Bai4c2_TueLDT;-- Mở cursor
-- Khai báo biến để lưu trữ dữ liệu từ cursor
DECLARE @MaCLB_TueLDT VARCHAR(5), @TenCLB_TueLDT NVARCHAR(255), @TenSVD_TueLDT NVARCHAR(255);
-- Fetch dòng đầu tiên từ cursor vào biến
FETCH NEXT FROM Bai4c2_TueLDT INTO @MaCLB_TueLDT, @TenCLB_TueLDT, @TenSVD_TueLDT;
-- Duyệt qua từng dòng trong cursor
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Thực hiện các xử lý tùy thuộc vào dữ liệu từ cursor
    PRINT 'MaCLB: ' + @MaCLB_TueLDT + ', Ten cau lac bo: ' + @TenCLB_TueLDT + ', Ten san: ' 
	+ @TenSVD_TueLDT;
    FETCH NEXT FROM Bai4c2_TueLDT INTO @MaCLB_TueLDT, @TenCLB_TueLDT, @TenSVD_TueLDT;
END
CLOSE Bai4c2_TueLDT;
DEALLOCATE Bai4c2_TueLDT;

/******************************************************/
-- 3. Tính điểm, xếp hạng các đội bóng theo vòng, năm và INSERT kết quả vào bảng BANGXH.-- a. Tạo 2 View xem kết quả điểm sân nhà, điểm sân khách ứng với mỗi câu lạc bộ.
-- View 1: Kết quả điểm sân nhà

DECLARE Bai4c3a_View1_TueLDT CURSOR FOR
SELECT td.MACLB1_0909 AS MACLB_0909, td.NAM_0909, td.VONG_0909,
       CAST(LEFT(td.KETQUA_0909, CHARINDEX('-', td.KETQUA_0909) - 1) AS INT) AS SoBanTHANG_0909,
       CAST(SUBSTRING(td.KETQUA_0909, CHARINDEX('-', td.KETQUA_0909) + 1, LEN(td.KETQUA_0909)) AS INT) AS SoBanThua_0909
FROM TRANDAU_TueLDT td
JOIN CAULACBO_TueLDT clb1 ON td.MACLB1_0909 = clb1.MACLB_0909
WHERE td.MASAN_0909 = clb1.MASAN_0909
UNION
SELECT td.MACLB2_0909 AS MACLB_0909, td.NAM_0909, td.VONG_0909,
       CAST(SUBSTRING(td.KETQUA_0909, CHARINDEX('-', td.KETQUA_0909) + 1, LEN(td.KETQUA_0909)) AS INT) AS SoBanTHANG_0909,
       CAST(LEFT(td.KETQUA_0909, CHARINDEX('-', td.KETQUA_0909) - 1) AS INT) AS SoBanThua_0909
FROM TRANDAU_TueLDT td
JOIN CAULACBO_TueLDT clb2 ON td.MACLB2_0909 = clb2.MACLB_0909
WHERE td.MASAN_0909 = clb2.MASAN_0909;

OPEN Bai4c3a_View1_TueLDT; -- Mở cursor

-- Khai báo biến để lưu trữ dữ liệu từ cursor
DECLARE @MACLB_BEFORE_TueLDT VARCHAR(5), @MACLB_AFTER_TueLDT VARCHAR(5), @NAM_TueLDT INT, @VONG_TueLDT INT,
        @SOBANTHANG_TueLDT INT, @SOBANTHUA_TueLDT INT, @COUNT INT;
SET @COUNT = 0;

-- Fetch dòng đầu tiên từ cursor vào biến
FETCH NEXT FROM Bai4c3a_View1_TueLDT INTO @MACLB_AFTER_TueLDT, @NAM_TueLDT, @VONG_TueLDT,
                                            @SOBANTHANG_TueLDT, @SOBANTHUA_TueLDT;

-- Duyệt qua từng dòng trong cursor
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Thực hiện các xử lý tùy thuộc vào dữ liệu từ cursor
    IF @MACLB_BEFORE_TueLDT <> @MACLB_AFTER_TueLDT
    BEGIN
        PRINT 'MACLB: ' + @MACLB_BEFORE_TueLDT + ' Diem tren san nha: ' + CAST(@COUNT AS NVARCHAR(10));
        SET @COUNT = 0;
    END
    IF @SOBANTHANG_TueLDT > @SOBANTHUA_TueLDT
        SET @COUNT += 3;
    ELSE IF @SOBANTHANG_TueLDT = @SOBANTHUA_TueLDT
        SET @COUNT += 1;
    ELSE IF @SOBANTHANG_TueLDT < @SOBANTHUA_TueLDT
        SET @COUNT += 0;

    SET @MACLB_BEFORE_TueLDT = @MACLB_AFTER_TueLDT;
    FETCH NEXT FROM Bai4c3a_View1_TueLDT INTO @MACLB_AFTER_TueLDT, @NAM_TueLDT, @VONG_TueLDT,
                                                @SOBANTHANG_TueLDT, @SOBANTHUA_TueLDT;
END;
PRINT 'MACLB: ' + @MACLB_BEFORE_TueLDT + ' Diem tren san nha: ' + CAST(@COUNT AS NVARCHAR(10));
CLOSE Bai4c3a_View1_TueLDT;

DEALLOCATE Bai4c3a_View1_TueLDT;


-- View 2: Kết quả điểm trên sân khách
DECLARE Bai4c3a_View2_TueLDT CURSOR FOR
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

OPEN Bai4c3a_View2_TueLDT; -- Mở cursor

-- Khai báo biến để lưu trữ dữ liệu từ cursor
DECLARE @MACLB_BEFORE_TueLDT VARCHAR(5), @MACLB_AFTER_TueLDT VARCHAR(5), @NAM_TueLDT INT, @VONG_TueLDT INT,
        @SOBANTHANG_TueLDT INT, @SOBANTHUA_TueLDT INT, @COUNT INT;
SET @COUNT = 0;

-- Fetch dòng đầu tiên từ cursor vào biến
FETCH NEXT FROM Bai4c3a_View2_TueLDT INTO @MACLB_AFTER_TueLDT, @NAM_TueLDT, @VONG_TueLDT,
                                            @SOBANTHANG_TueLDT, @SOBANTHUA_TueLDT;

-- Duyệt qua từng dòng trong cursor
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Thực hiện các xử lý tùy thuộc vào dữ liệu từ cursor
    IF @MACLB_BEFORE_TueLDT <> @MACLB_AFTER_TueLDT
    BEGIN
        PRINT 'MACLB: ' + @MACLB_BEFORE_TueLDT + ' Diem tren san nha: ' + CAST(@COUNT AS NVARCHAR(10));
        SET @COUNT = 0;
    END
    IF @SOBANTHANG_TueLDT > @SOBANTHUA_TueLDT
        SET @COUNT += 3;
    ELSE IF @SOBANTHANG_TueLDT = @SOBANTHUA_TueLDT
        SET @COUNT += 1;
    ELSE IF @SOBANTHANG_TueLDT < @SOBANTHUA_TueLDT
        SET @COUNT += 0;

    SET @MACLB_BEFORE_TueLDT = @MACLB_AFTER_TueLDT;
    FETCH NEXT FROM Bai4c3a_View2_TueLDT INTO @MACLB_AFTER_TueLDT, @NAM_TueLDT, @VONG_TueLDT,
                                                @SOBANTHANG_TueLDT, @SOBANTHUA_TueLDT;
END;
PRINT 'MACLB: ' + @MACLB_BEFORE_TueLDT + ' Diem tren san khach: ' + CAST(@COUNT AS NVARCHAR(10));
CLOSE Bai4c3a_View2_TueLDT;

DEALLOCATE Bai4c3a_View2_TueLDT;

/******************************************************/
-- b. Tính điểm của từng câu lạc bộ theo năm, vòng đấu _ sắp xếp theo tổng 
-- điểm, hiệu số, tổng bàn thắng, tổng bàn thua.
select td.MACLB2_0909 as MACLB_0909, td.NAM_0909, td.VONG_0909, -- lấy mã clb, năm, vòng của trận đấu
cast(substring(td.KETQUA_0909, charindex('-', td.KETQUA_0909) + 1, len(td.KETQUA_0909)) as INT) as SoBanTHANG_0909, -- lấy số bàn thắng
cast(left(td.KETQUA_0909, charindex('-', td.KETQUA_0909) - 1) AS INT) as SoBanThua_0909 -- lấy số bàn thua
from TRANDAU_TueLDT td -- từ bảng trận đấu
join CAULACBO_TueLDT clb1 on td.MACLB1_0909 = clb1.MACLB_0909 -- join bảng clb với điều kiện clb1 cùng mã CLB
union select td.MACLB1_0909 as MACLB_0909, td.NAM_0909, td.VONG_0909, -- lấy mã clb, năm, vòng của trận đấu
cast(left(td.KETQUA_0909, charindex('-', td.KETQUA_0909) - 1) AS INT) as SoBanTHANG_0909, -- lấy số bàn thắng
cast(substring(td.KETQUA_0909, charindex('-', td.KETQUA_0909) + 1, len(td.KETQUA_0909)) as INT) as SoBanThua_0909 -- lấy số bàn thua
from TRANDAU_TueLDT td -- từ bảng trận đấu
join CAULACBO_TueLDT clb2 on td.MACLB2_0909 = clb2.MACLB_0909 -- join bảng clb với điều kiện clb2 cùng mã clb
ORDER BY VONG_0909, SoBanTHANG_0909 DESC, SoBanThua_0909;
/******************************************************/
-- c. Duyệt CURSOR và INSERT dữ liệu vào bảng BANGXH (có kiểm tra tồn tại của
-- dữ liệu) -> Nếu chưa có thì INSERT, ngược lại thì UPDATE -> INSERT/UPDATE trực tiếp hoặc 
-- thông qua STORE PROCEDURE.