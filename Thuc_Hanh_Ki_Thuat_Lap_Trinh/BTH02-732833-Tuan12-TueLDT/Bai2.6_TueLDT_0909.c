/*
Bài 2.6. Giả thuyết Collatz: bắt đầu từ số dương n bất kỳ, 
nếu n chẵn thì chia 2, nếu lẻ thì nhân 3 cộng 1, giả thuyết 
cho rằng ta luôn đi đến n = 1. Hãy viết chương trình mô phỏng 
lại quá trình biến đổi để kiếm chứng giả thuyết với giá trị 
của n nhập từ bàn phím.
*/
//Le Dinh Tri Tue - 0909 - 732833
#include <stdio.h>

void print(int n) {
    printf("n=%d\n", n);
}
//Le Dinh Tri Tue - 0909 - 732833
//Nhân 3 cộng 11
int mul3plus1(int n) {
    return n * 3 + 1;
}
//Le Dinh Tri Tue - 0909 - 732833
//Chia 2
int div2(int n) {
    return n / 2;
}

// khai báo các tham số cho các con trỏ hàm odd, even và output
void simulate(int n, int (*odd)(int), int (*even)(int), void (*output)(int))  {
    (*output)(n);
    if (n == 1) return;
    if (n % 2 == 0) {
        n = (*even)(n);
    } else {
        n = (*odd)(n);
    }
    simulate(n, odd, even, output);
}
//Le Dinh Tri Tue - 0909 - 732833
int main() {
    int (*odd)(int) = &mul3plus1;  
    int (*even)(int) = &div2;     

    int n;
    scanf("%d", &n);
    simulate(n, odd, even, print);

    return 0;
}
