/*
Lê Đình Trí Tuệ - 0909 - 732833
Bai 9. Viết chương trình in ra tất cả các dãy con của một dãy cho trước
*/
#include <stdio.h>

void printAll(int *array, int n)
{
    for (int i = 0; i < n; i++){
        for (int j = i + 1; j < n; j++){
            for (int k = i; k < j; k++){
                printf("%d ", *(array + k));
            }
            printf("\n");
        }
    }
}
//Lê Đình Trí Tuệ - 0909 - 732833
int main(){
    int array[] = {1, 3, 4, 2};
    printAll(array, 5);
    return 0;
}