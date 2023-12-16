/*
Le Dinh Tri Tue - 0909 - 732833
Bài 1.5. Viết hàm trả về con trỏ trỏ tới giá trị lớn nhất 
của một mảng các số double. Nếu mảng rỗng hãy trả về NULL.
*/
#include <stdlib.h>

double* maximum(double* a, int size){
    double *max;
    max = a;
    if (a==NULL) return NULL;

    //*****************
    //# YOUR CODE HERE #
    //Le Dinh Tri Tue - 0909 - 732833
    for (int i = 0; i < size; i++){
        if (*max < *(a + i)){
            max = a + i;
        }
    }
    
    //*****************/
    
    return max;
}
