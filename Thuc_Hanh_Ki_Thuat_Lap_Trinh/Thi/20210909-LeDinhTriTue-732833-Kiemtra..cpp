#include <bits/stdc++.h>
//20210909 - LeDinhTriTue - 732833
// Tạo struct của mat hang gồm các thuộc tính như đề bài
struct mathang_0909{
    std::string tenmathang_0909; //
    std::string donvitinh_0909; //
    double dongia_0909; //
    int soluong_0909; //
    double thanhtien_0909; //
    double sotienvanchuyen_0909; //
};
// Tạo struct của phiếu xuất gồm các thuộc tính như đề bài và thêm 1 danh sách mặt hàng
struct phieuxuat_0909{
    std::string tenkho_0909; //
    std::string maphieuxuat_0909; //
    std::string ngay_0909; //
    std::string thang_0909; //
    std::string nam_0909; //
    int somathang_0909;//
    double sotiendathanhtoan_0909;//
    double sotienthanhtien_0909;//
    double sotienvanchuyen_0909;//
    std::vector<mathang_0909> dsmathang_0909; //
};

int main(){
    std::cout << std::endl << "Kip 9h15 - 11h45 Tuan 18 Ngay 06.01.2024";
    std::cout << std::endl << "Kiem tra thuc hanh - Quan ly Phieu xuat";
    std::cout << std::endl << "Le Dinh Tri Tue - 0909 - 732833 - 2023.1";
    int sophieuxuat_0909 = 0;
    std::cout << std::endl << "Nhap so phieu xuat: ";
    std::cin >> sophieuxuat_0909;
    std::cout << std::endl;
    std::vector<phieuxuat_0909> dsphieuxuat_0909;

     while (true){
        int control_0909;
        std::cout << std::endl << "Le Dinh Tri Tue - 0909 - 732833 - 2023.1";
        std::cout << std::endl << "**    CHUONG TRINH QUAN LY PHIEU XUAT **";
        std::cout << std::endl << "**1.  Nhap CAC PHIEU XUAT, MAT HANG **";
        std::cout << std::endl << "**2.  IN KET QUA PHIEU XUAT VA MAT HANG **";
        std::cout << std::endl << "**3.  Thoat **";
        std::cout << std::endl << "**********************************";
        std::cout << std::endl << "**    Nhap lua chon cua ban    **";
        std::cin >> control_0909;
        // Thực hiện nhập lệnh
        if (control_0909 == 0){
            // Nếu lệnh là 0 thì thoát chương trình
            std::cout << std::endl << "Ban da chon thoat chuong trinh!";
            break;
        } else if (control_0909 == 1){
            // Nếu lệnh là 1 thì thực hiện nhập thông tin
            std::cout << std::endl << "Ban da chon nhap PHIEU XUAT VA MAT HANG!";
            for (int i = 0; i < sophieuxuat_0909; ++i){
                phieuxuat_0909 phieuxuatNew_0909;
                std::cout << std::endl << std::setw(10) << std::left << "Nhap thong tin Phieu Xuat " << i + 1 << " : ";
                std::string tenkhohang_0909;
                std::string maphieuxuat_0909;
                //Nhập các thông tin của phiếu xuất
                std::cout << std::endl << std::setw(20) << std::left << "Ten kho hang: "; // Tên kho hàng
                std::getline(std::cin >> std::ws, tenkhohang_0909);
                phieuxuatNew_0909.tenkho_0909 = tenkhohang_0909;
                std::cout << std::endl << std::setw(20) << std::left << "Ma phieu xuat: "; // Mã phiếu xuất
                std::getline(std::cin >> std::ws, maphieuxuat_0909);
                phieuxuatNew_0909.maphieuxuat_0909 = maphieuxuat_0909;
                std::cout << std::endl << std::setw(10) << std::left << "Ngay Lap Phieu Xuat : ";
                std::string ngay_0909, thang_0909, nam_0909;
                std::cout << std::endl << std::setw(20) << std::left << "Ngay: "; // ngay
                std::getline(std::cin >> std::ws, ngay_0909);
                phieuxuatNew_0909.ngay_0909 = ngay_0909;
                std::cout << std::endl << std::setw(20) << std::left << "Thang: "; // thang
                std::getline(std::cin >> std::ws, thang_0909);
                phieuxuatNew_0909.thang_0909 = thang_0909;
                std::cout << std::endl << std::setw(20) << std::left <<  "Nam: "; // nam
                std::getline(std::cin >> std::ws, nam_0909);
                phieuxuatNew_0909.nam_0909 = nam_0909;
                int somathang_0909;
                std::cout << std::endl << std::setw(20) << std::left << "So mat hang: ";
                std::cin >> somathang_0909; // Nhập số mặt hàng
                phieuxuatNew_0909.somathang_0909 = somathang_0909;
                std::cout << std::endl << std::setw(20) << std::left << "Nhập Danh sách các mặt hàng:";
                std::vector<mathang_0909> dsmathang_0909; // Tạo ra danh sách mặt hàng và thêm 
                for (int j = 0; j < somathang_0909; ++j){
                    mathang_0909 mathangNew_0909;
                    std::cout << std::endl << std::setw(20) << std::left << "Mat hang thu " << j + 1;
                    std::string tenmathang_0909;
                    std::string donvitinh_0909;
                    int soluong_0909;
                    double dongia_0909;
                    // Nhập các thông tin mặt hàng
                    std::cout << std::endl << std::setw(30) << std::left << "Ten mat hang: "; // tên kho hàng
                    std::getline(std::cin >> std::ws, tenmathang_0909);
                    mathangNew_0909.tenmathang_0909 = tenmathang_0909;
                    std::cout << std::endl << std::setw(30) << std::left << "Don vi tinh: "; // đơn vị tính
                    std::getline(std::cin >> std::ws, donvitinh_0909);
                    mathangNew_0909.donvitinh_0909 = donvitinh_0909;
                    std::cout << std::endl << std::setw(30) << std::left << "So luong: "; // số lượng
                    std::cin >> soluong_0909;
                    mathangNew_0909.soluong_0909 = soluong_0909;
                    std::cout << std::endl << std::setw(30) << std::left << "Don gia: "; // đơn giá
                    std::cin >> dongia_0909;
                    mathangNew_0909.dongia_0909 = dongia_0909;

                    // Thực hiện tính toán tiền vận chuyển dựa trên đề bài
                    mathangNew_0909.thanhtien_0909 = mathangNew_0909.soluong_0909 * mathangNew_0909.dongia_0909;
                    if (mathangNew_0909.donvitinh_0909 == "Thung"){ // Nếu đơn vị tính là thùng
                        if (mathangNew_0909.soluong_0909 < 10){ // nếu số lượng < 10
                            mathangNew_0909.sotienvanchuyen_0909 = 50;
                        } else if ((mathangNew_0909.soluong_0909 >= 10) and (mathangNew_0909.soluong_0909 <= 30)){ // nếu 10 < số lượng <= 30
                            mathangNew_0909.sotienvanchuyen_0909 = 75;
                        } else if ((mathangNew_0909.soluong_0909 > 30) and (mathangNew_0909.soluong_0909 <= 50)){ // nếu 30 < số lượng <= 50
                            mathangNew_0909.sotienvanchuyen_0909 = 100;
                        } else if (mathangNew_0909.soluong_0909 > 50){ // nếu số lượng > 50
                            mathangNew_0909.sotienvanchuyen_0909 = 150;
                        }
                    } else { // Nếu đơn vị tính khác thùng
                        if (mathangNew_0909.soluong_0909 <= 50){ // nếu số lượng <= 50
                            mathangNew_0909.sotienvanchuyen_0909 = 30;
                        } else if (mathangNew_0909.soluong_0909 > 50){ // nếu số lượng > 50
                            mathangNew_0909.sotienvanchuyen_0909 = 75;
                        }
                    }

                    dsmathang_0909.push_back(mathangNew_0909);
                }
                double sotiendathanhtoan_0909;
                std::cout << std::endl << std::setw(20) << std::left << "So tien da thanh toan: ";
                std::cin >> sotiendathanhtoan_0909;
                phieuxuatNew_0909.sotiendathanhtoan_0909 = sotiendathanhtoan_0909;
                phieuxuatNew_0909.dsmathang_0909 = dsmathang_0909;
                // Thực hiện tính toán các thông tin dựa trên yêu cầu đề bài
                double tongthanhtien_0909 = 0;
                double tongphivanchuyen_0909 = 0;
                for (int j = 0; j < phieuxuatNew_0909.dsmathang_0909.size(); ++j){
                    tongthanhtien_0909 += phieuxuatNew_0909.dsmathang_0909[j].thanhtien_0909;
                    tongphivanchuyen_0909 += phieuxuatNew_0909.dsmathang_0909[j].sotienvanchuyen_0909;
                }
                phieuxuatNew_0909.sotienthanhtien_0909 = tongthanhtien_0909;
                phieuxuatNew_0909.sotienvanchuyen_0909 = tongphivanchuyen_0909;
                // Thêm phiếu xuất vào danh sách
                dsphieuxuat_0909.push_back(phieuxuatNew_0909);
            }
            std::cout << std::endl << "Ban da nhap thanh cong !";
            std::cout << std::endl << "Bam phim bat ky de tiep tuc!";
            std::cout << std::endl << "Le Dinh Tri Tue - 0909 - 732833 - 2023.1" << std::endl;
        } else if (control_0909 == 2){
            // Nếu lệnh là 2 thì thực hiện in ra phiếu xuất
            std::cout << std::endl << "Ban da chon IN RA PHIEU XUAT !";
            std::cout << std::endl << "Le Dinh Tri Tue - 0909 - 732833 - 2023.1";
            for (int i = 0; i < dsphieuxuat_0909.size(); ++i){
                std::cout << std::endl << "---------------------------------------------------------------------------------------------------------------------------------";
                // In ra Tên Kho hàng //20210909 - LeDinhTriTue - 732833
                // In thông tin chung của phiếu xuất i
                std::cout << std::endl << std::setw(20) << std::left << "Ten kho Hang: " << dsphieuxuat_0909[i].tenkho_0909;
                std::cout << std::endl << std::setw(20) << std::left << "Ngay " << dsphieuxuat_0909[i].ngay_0909 << " thang " << dsphieuxuat_0909[i].thang_0909 << " nam " << dsphieuxuat_0909[i].nam_0909;
                std::cout << std::endl << std::setw(20) << std::left << "So mat hang: " << dsphieuxuat_0909[i].somathang_0909;
                std::cout << std::endl << std::setw(20) << std::left << "Da thanh toan: " << dsphieuxuat_0909[i].sotiendathanhtoan_0909;
                std::cout << std::endl << std::setw(20) << std::left << "Tong thanh tien: " << dsphieuxuat_0909[i].sotienthanhtien_0909;
                std::cout << std::endl << std::setw(20) << std::left << "Tong van chuyen: " << dsphieuxuat_0909[i].sotienvanchuyen_0909;
                std::cout << std::endl << std::setw(20) << std::left << "Tong Phai Thanh Toan: " << dsphieuxuat_0909[i].sotienthanhtien_0909 + dsphieuxuat_0909[i].sotienvanchuyen_0909;
                std::cout << std::endl << std::setw(20) << std::left << "Tinh trang thanh toan: ";
                double tien_0909 = dsphieuxuat_0909[i].sotiendathanhtoan_0909 - (dsphieuxuat_0909[i].sotienthanhtien_0909 + dsphieuxuat_0909[i].sotienvanchuyen_0909);
                if (tien_0909 < 0){
                    std::cout << std::endl << "Con no xuat nay so tien: " << -tien_0909;
                } else {
                    std::cout << std::endl << "Chuyen phieu xuat sau so tien: " << tien_0909;
                }
                std::cout << std::endl << "Chi tiet cac Mat hang"; // In ra chi tiết các mặt hàng của phiếu xuất i
                std::cout << std::endl  << std::setw(20) << std::left << "TenMatHang"
                                        << std::setw(20) << std::left << "DonVT"
                                        << std::setw(20) << std::left << "SoL"
                                        << std::setw(20) << std::left << "dongia"   
                                        << std::setw(20) << std::left << "Thanhtien"    
                                        << std::setw(20) << std::left << "Vanchuyen"      
                                        << std::setw(20) << std::left << "Cong";
                for (int j = 0; j < dsphieuxuat_0909[i].dsmathang_0909.size();++j){
                    std::cout << std::endl  << std::setw(20) << std::left << dsphieuxuat_0909[i].dsmathang_0909[j].tenmathang_0909
                                            << std::setw(20) << std::left << dsphieuxuat_0909[i].dsmathang_0909[j].donvitinh_0909
                                            << std::setw(20) << std::left << dsphieuxuat_0909[i].dsmathang_0909[j].soluong_0909
                                            << std::setw(20) << std::left << dsphieuxuat_0909[i].dsmathang_0909[j].dongia_0909
                                            << std::setw(20) << std::left << dsphieuxuat_0909[i].dsmathang_0909[j].thanhtien_0909
                                            << std::setw(20) << std::left << dsphieuxuat_0909[i].dsmathang_0909[j].sotienvanchuyen_0909
                                            << std::setw(20) << std::left << dsphieuxuat_0909[i].dsmathang_0909[j].thanhtien_0909 + dsphieuxuat_0909[i].dsmathang_0909[j].sotienvanchuyen_0909;
                }
                
            }
            std::cout << std::endl << "---------------------------------------------------------------------------------------------------------------------------------";
            double tongthanhtiencpx_0909 = 0;
            double tongvanchuyencpx_0909 = 0;
            double tongphaithanhtoancpx_0909 = 0;
            double tongdathanhtoancpx_0909 = 0;
            //20210909 - LeDinhTriTue - 732833
            // Thực hiện tính toán các số dựa trên đề bài
            for (int i = 0; i < dsphieuxuat_0909.size(); ++i){
                tongthanhtiencpx_0909 += dsphieuxuat_0909[i].sotienthanhtien_0909;
                tongvanchuyencpx_0909 += dsphieuxuat_0909[i].sotienvanchuyen_0909;
                tongphaithanhtoancpx_0909 += dsphieuxuat_0909[i].sotienthanhtien_0909 + dsphieuxuat_0909[i].sotienvanchuyen_0909;
                tongdathanhtoancpx_0909 += dsphieuxuat_0909[i].sotiendathanhtoan_0909;
            }
            // In ra kết quả chung của các phiếu xuất kho
            std::cout << std::endl << "Tong Thanh Tien Cac Phieu Xuat: " << tongthanhtiencpx_0909;
            std::cout << std::endl << "Tong van chuyen cac phieu xuat: " << tongvanchuyencpx_0909;
            std::cout << std::endl << "Tong Phai Thanh Toan cac Phieu Xuat: " << tongphaithanhtoancpx_0909;
            std::cout << std::endl << "Tong Da Thanh Toan Cac Phieu Xuat: " << tongdathanhtoancpx_0909;
            std::cout << std::endl << "Tinh Trang Thanh Toan: ";
            std::cout << std::endl << "Thua Chuyen Thanh Toan Lan Sau: " << tongdathanhtoancpx_0909 - tongphaithanhtoancpx_0909;
            std::cout << std::endl << "Bam phim bat ky de tiep tuc!";
            std::cout << std::endl << "Le Dinh Tri Tue - 0909 - 732833 - 2023.1";

        }
     }
    return 0;
}