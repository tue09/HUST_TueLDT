/*
Lê Đình Trí Tuệ - 0909 - 732833
Bai 10. Viết chương trình nhập vào 2 ma trận vuông 
cùng kích thước n*n, trong đó n nhập từ bàn phím. 
Sau đó tính tổng và tích của hai ma trận đó và đưa kết quả ra màn hình.
Yêu cầu sử dụng cấp phát động để cấp phát bộ nhớ cho các ma trận.
*/

#include <stdio.h>
#include <stdlib.h>
void sum2Arr(int **arr1, int **arr2, int n){
    for (int i = 0; i < n; i++){
        for (int j = 0; j < n; j++){
            //int temp = arr1[i][j] + arr2[i][j];
            int temp = *(arr1[i] + j) + *(arr2[i] + j);
            printf("%d ", temp);
        }
        printf("\n");
    }
}
//Lê Đình Trí Tuệ - 0909 - 732833
void multi2Arr(int **arr1, int**arr2, int n){
    for (int i = 0; i < n; i++){
        for (int j = 0; j < n; j++){
            int temp = 0;
            for (int k = 0; k < n; k++){
                //temp = temp + 
                temp = temp + (*(arr1[i] + k))*(*(arr2[k] + j));
            }
            printf("%d ", temp);
        }
        printf("\n");
    }
}
//Lê Đình Trí Tuệ - 0909 - 732833
int main(){
    int n;
    scanf("%d", &n);
    int **array1 = (int **)calloc(n, sizeof(int *));
    for (int i = 0; i < n; i++) {
        array1[i] = (int *)calloc(n, sizeof(int));
    }
    int **array2 = (int **)calloc(n, sizeof(int *));
    for (int i = 0; i < n; i++) {
        array2[i] = (int *)calloc(n, sizeof(int));
    }
    //Lê Đình Trí Tuệ - 0909 - 732833
    for (int i = 0; i < n; i++){
        for (int j = 0; j < n; j++){
            int temp;
            scanf("%d", &temp);
            array1[i][j] = temp;
        }
    }
    //Lê Đình Trí Tuệ - 0909 - 732833
    for (int i = 0; i < n; i++){
        for (int j = 0; j < n; j++){
            int temp;
            scanf("%d", &temp);
            array2[i][j] = temp;
        }
    }
    sum2Arr(array1, array2, n);
    multi2Arr(array1, array2, n);
    return 0;
}