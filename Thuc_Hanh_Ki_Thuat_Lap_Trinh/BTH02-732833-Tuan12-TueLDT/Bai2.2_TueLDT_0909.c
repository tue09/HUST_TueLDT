/*
Viết hàm hoán vị vòng tròn 3 biến a, b, c. 
Sau khi thực hiện hàm, các biến a, b, c 
tương ứng nhận các giá trị mới b, c, a.
//Le Dinh Tri Tue - 0909 - 732833
*/

#include <stdio.h>
//Le Dinh Tri Tue - 0909 - 732833
// Hàm rotate
void rotate(int &x, int &y, int &z) {
    /*****************
    # YOUR CODE HERE #
    *****************/
    int temp = x;
    x = y; y = z; z = temp;
}
//Le Dinh Tri Tue - 0909 - 732833
int main() {
    int x, y, z;
    
    //# Nhập 3 số nguyên
    /*****************
    # YOUR CODE HERE #
    *****************/
    scanf("%d%d%d", &x, &y, &z);
    //Le Dinh Tri Tue - 0909 - 732833
    printf("Before: %d, %d, %d\n", x, y, z);
    rotate(x, y, z);
    printf("After: %d, %d, %d\n", x, y, z);
    
    return 0;
}