/*
Bài 5.2: Tìm và sửa các lỗi cú pháp
Bài toán cái túi: Cho một cái túi có sức chứa M và n đồ vật. Đồ vật thứ 
i có khối lượng mi và giá trị vi. Cần chọn ra một số đồ vật để bỏ vào túi 
sao cho tổng khối lượng không quá M và tổng giá trị là lớn nhất có thể. 
Đoạn code sau đây giải bài toán cái túi bằng phương pháp duyệt nhánh cận. 
Hãy tìm và sửa các lỗi cú pháp */
#include <iostream>
using namespace std;
//Le Dinh Tri Tue - 0909 - 732833
int n, M, m[100], v[100];
int x[100], best, sumV, sumM, all[100];

void init(){
    for (int i = n; i >= 1; --i){
        all[i] = all[i+1] + v[i];
    }
}

void print() {
    cout << best;
}
//Le Dinh Tri Tue - 0909 - 732833
void process(int i){
    if (sumV + all[i] <= best || sumM > M) return ;
    if (i > n){
        best = sumV;
        return ;
    }
    process(i+1);
    sumM += m[i];
    sumV += v[i];
    process(i+1);
    sumM -= m[i];
    sumV -= v[i];
}

int main() {
    cout << "Le Dinh Tri Tue - 0909 - 732833" << endl;
    cin >> n >> M;
    for (int i = 1; i <= n; ++i)
        cin >> m[i] >> v[i];
    init();
    process(1);
    print();
    return 0;
}