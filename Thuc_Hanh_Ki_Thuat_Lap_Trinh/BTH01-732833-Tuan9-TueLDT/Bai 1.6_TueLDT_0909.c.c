/*
Le Dinh Tri Tue - 0909 - 732833
Bài 1.6. Viết hàm đảo ngược một mảng các số nguyên theo hai cách: dùng chỉ số và dùng con trỏ.
*/

void reversearray(int arr[], int size){
    //int l = 0, r = size - 1, tmp;
    int tmp;
    
    //*****************
    //# YOUR CODE HERE #
    //Le Dinh Tri Tue - 0909 - 732833
    
    //*****************/
    for (int i = 0; i < size; i++){
        for (int j = i + 1; j < size; j++){
            tmp = arr[i];
            arr[i] = arr[j];
            arr[j] = tmp;
        }
                
    }
}

void ptr_reversearray(int *arr, int size){
    //int l = 0, r = size - 1, tmp;
    int tmp;
    
    //*****************
    //# YOUR CODE HERE #
    //Le Dinh Tri Tue - 0909 - 732833
    for (int i = 0; i < size; i++){
        for (int j = i + 1; j < size; j++){
            tmp = *(arr + i);
            *(arr + i) = *(arr + j);
            *(arr + j) = tmp;
        }
                
    }
    //*****************/
}