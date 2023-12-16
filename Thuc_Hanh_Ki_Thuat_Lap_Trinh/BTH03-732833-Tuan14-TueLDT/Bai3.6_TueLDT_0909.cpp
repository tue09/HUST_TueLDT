/*Bài 3.6. Tìm ước chung lớn nhất của hai số nguyên a, b cho trước.
*/
#include <iostream>
using namespace std;
// Le Dinh Tri Tue - 0909 - 732833
int gcd(int a, int b){
    if (b == 0) return a;
    return gcd(b, a % b);
}
// Le Dinh Tri Tue - 0909 - 732833
int gcd2(int a, int b){

    //# Khử đệ quy
    // Le Dinh Tri Tue - 0909 - 732833
    while(b != 0){
        int tmp = a % b;
        a = b;
        b = tmp;
    }

    return a;
    /*****************/
}

int main() {
    // Le Dinh Tri Tue - 0909 - 732833
    int a, b;
    cin >> a >> b;
    cout << gcd(a, b) << endl << gcd2(a, b);
    return 0;
}