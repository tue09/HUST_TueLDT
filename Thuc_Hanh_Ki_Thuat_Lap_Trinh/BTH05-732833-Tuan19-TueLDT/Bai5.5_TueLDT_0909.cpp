
/*
Bài 5.5: Năm nhuận
Một năm được coi là nhuận nếu hoặc nó chia hết cho 4 nhưng không 
chia hết cho 100, hoặc nó chia hết cho 400. Cho một danh sách các năm, 
kiểm tra xem có tồn tại năm nhuận trong danh sách đó hay không.*/
#include <bits/stdc++.h>
using namespace std;
//Le Dinh Tri Tue - 0909 - 732833
int main(){
    cout << "Le Dinh Tri Tue - 0909 - 732833" << endl;
    int n;
    cin >> n;
    bool found = false;
    while(n--){
        int a;
        cin >> a;
        if (a % 4 == 0 && a % 100 != 0)
            found = true;
        else if(a % 400 == 0){
            found = true;
        }
    }
    if (found) cout << "Yes";
    else cout << "No";
}