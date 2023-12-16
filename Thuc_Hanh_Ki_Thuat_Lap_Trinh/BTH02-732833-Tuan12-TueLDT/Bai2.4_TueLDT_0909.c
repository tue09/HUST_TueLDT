/*
Bài 2.4. Viết các hàm tính lập phương của số nguyên và số thực.
Le Dinh Tri Tue - 0909 - 732833
*/

#include <stdio.h>
#include <math.h>
//Le Dinh Tri Tue - 0909 - 732833
int cube(int x) {
    //# trả về lập phương của x
    /*****************
    # YOUR CODE HERE #
    *****************/
    return pow(x, 3);
}
double cube(double x){
    return pow(x, 3);
}
//Le Dinh Tri Tue - 0909 - 732833
//# viết hàm tính lập phương của một số kiểu double
/*****************
# YOUR CODE HERE #
*****************/

int main() {
    int n;
    double f;
    scanf("%d %lf", &n, &f);
    //Le Dinh Tri Tue - 0909 - 732833
    printf("Int: %d\n", cube(n));
    printf("Double: %.2lf\n", cube(f));
    
    return 0;
}