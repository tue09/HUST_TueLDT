/*
Bài 2.1.  Viết hàm tính độ dài cạnh huyền của tam giác theo độ hai cạnh góc vuông.
//Le Dinh Tri Tue - 0909 - 732833
*/

#include <stdio.h>
#include <math.h>
//Le Dinh Tri Tue - 0909 - 732833
// Hàm tính độ dài cạnh huyền
float get_hypotenuse(float x, float y) {
    //*****************
    //# YOUR CODE HERE #
    return sqrt(pow(x, 2) + pow(y, 2));
    //*****************
}
//Le Dinh Tri Tue - 0909 - 732833
int main(){
    float x, y;
    scanf("%f%f", &x, &y);
    
    float z = get_hypotenuse(x, y);
    printf("z = %.2f\n", z);
    
    return 0;
}