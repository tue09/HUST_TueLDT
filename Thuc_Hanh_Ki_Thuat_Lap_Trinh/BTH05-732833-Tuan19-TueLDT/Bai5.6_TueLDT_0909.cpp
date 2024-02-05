
/*
Bai 5.6 Tổng kết
Một lớp có n sinh viên. Sinh viên thứ i có điểm tổng kết là 
ai theo thang điểm 10. Để đánh giá chất lượng dạy học, 
giảng viên muốn biết có bao nhiêu bạn đạt điểm A, B, C, D, F.*/
#include <bits/stdc++.h>
using namespace std;
//Le Dinh Tri Tue - 0909 - 732833
int main(){
    cout << "Le Dinh Tri Tue - 0909 - 732833" << endl;
    float n;
    cin >> n;
    int A = 0, B = 0, C = 0, D = 0, F = 0;
    while(n--){
        float a;
        cin >> a;
        if (7 <= a && a < 8.5) ++B;
        else if (5.5 <= a && a < 7) ++C;
        else if (8.5 <= a) ++A;
        else if (4 <= a && a < 5.5) ++D;
        else if (a < 4) ++F;
    }
    cout << A << " " << B << " " << C << " " << D << " " << F;
}