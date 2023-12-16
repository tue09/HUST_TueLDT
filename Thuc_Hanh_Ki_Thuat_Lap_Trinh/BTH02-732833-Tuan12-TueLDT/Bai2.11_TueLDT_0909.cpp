/*
Bài 11: Cho 2 đa thức A(x) và B(x) tương ứng có bậc N và M
Hãy tính ma trận tích C(x) = A(x) * B(x) có bậc N+M−1
// Le Dinh Tri Tue - 0909 - 732833
*/

#include <bits/stdc++.h> 

void find_index(int a[], int b[], int n, int m, int c[]) {
    for (int i = 0; i < n + m + 1; i++) {
        for (int j = 0; j < n + 1; j++) {
            if (i - j >= 0 and i - j < m + 1) {
                c[i] += a[j] * b[i-j];
            }
        } 
    }
}
// Le Dinh Tri Tue - 0909 - 732833
int cal_XOR(int c[], int n) {
    if (n > 0) {
        int result = c[0];
        for (int i = 1; i < n + 1; i++) {
            result = result ^ c[i];
        }
        return result;
    }
    return -1;
}
// Le Dinh Tri Tue - 0909 - 732833
int main() {
    int n;
    std::cin>>n;
    int a[n + 1];
    for (int i = 0; i < n + 1; i++) {
        std::cin>>a[i];
    }
    int m;
    std::cin>>m;
    int b[m + 1];
    for (int i = 0; i < m + 1; i++) {
        std::cin>>b[i];
    }
    int c[m+n+1];
    memset(c,0,sizeof c);
    find_index(a, b, n, m, c);
    std::cout<<cal_XOR(c, n + m);
}
// Le Dinh Tri Tue - 0909 - 732833