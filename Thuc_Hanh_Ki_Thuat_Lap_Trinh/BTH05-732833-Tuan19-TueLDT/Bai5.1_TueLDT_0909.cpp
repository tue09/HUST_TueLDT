/*
Bài 5.1 : Tìm và sửa các lỗi cú pháp*/
#include <stdio.h>
//Le Dinh Tri Tue - 0909 - 732833

int x[100], mark[100], n;

void print(){
    for (int i = 1; i <= n; ++i) printf("%d ", x[i]);
    printf("\n");
}
//Le Dinh Tri Tue - 0909 - 732833

void process(int i) {
    if (i > n){
        print();
        return;
    }
    for (int j = 1; j <= n; ++j)
        if (!mark[j]){
            mark[j] = 1;
            x[i] = j;
            process(i+1);
            mark[j] = 0;
        }
}

int main() {
    printf("Le Dinh Tri Tue - 0909 - 732833\n");
    n = 5;
    process(1);
    return 0;
}