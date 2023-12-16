/*
Bài 3.1. Dãy Lucas được định nghĩa bởi 
Ln = Ln-1 + Ln-2 với L0 = 2, L1 = 1. Hãy viết hàm tính số Lucas thứ n.*/

#include<stdio.h>
#include<iostream>
using namespace std;

int lucas(int n) {

    //****************
    // Le Dinh Tri Tue - 0909 - 732833
    if(n == 0) return 2;
    if(n == 1) return 1;
    return lucas(n-1) + lucas(n-2);
    /*****************/
}

int main(){
    // Le Dinh Tri Tue - 0909 - 732833
    cout << lucas(3);
}
