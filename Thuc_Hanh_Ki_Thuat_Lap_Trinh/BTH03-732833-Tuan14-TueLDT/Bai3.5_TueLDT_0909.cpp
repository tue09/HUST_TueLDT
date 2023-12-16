//Bài 3.5. Tính hệ số tổ hợp C(n, k)
// Le Dinh Tri Tue - 0909 - 732833
#include<stdio.h>
#include <iostream>
using namespace std;
const int MAX = 1000;
// Le Dinh Tri Tue - 0909 - 732833
int binom(int n, int k) {
    if (k > n) return 0;
    if (k == 0) return 1;
    return binom(n-1, k) + binom(n-1, k-1);
}
// Le Dinh Tri Tue - 0909 - 732833
int binom2(int n, int k){

    //# Khử đệ quy
    // Le Dinh Tri Tue - 0909 - 732833
    long result = 1; //(nC0 = 1)
    for ( int i = 1; i <= k ; i++)
    {
        result = result * n / i;
        n--;
    }
    return result;
    /*****************/
}

int main() {
    // Le Dinh Tri Tue - 0909 - 732833
    int m;
    cin >> m;
    for (int n = 1; n <= m; ++n){
        for (int k = 0; k <= n; ++k)
            printf("%d ", binom(n, k));
        printf("\n");
    }
    for (int n = 1; n <= m; ++n){
        for (int k = 0; k <= n; ++k)
            printf("%d ", binom2(n, k));
        printf("\n");
    }
    return 0;
}