/*
Le Dinh Tri Tue - 0909 - 732833
Bài 1.4. Viết hàm countEven(int*, int) nhận một mảng số nguyên 
và kích thước của mảng, trả về số lượng số chẵn trong mảng???
*/

int counteven(int* arr, int size){

    //*****************
    //# YOUR CODE HERE #
    int num = 0;
    for (int i = 0; i < size; i++){
        if (*(arr + i) % 2 == 0){
            num = num + 1;
        }
    }
    //Le Dinh Tri Tue - 0909 - 732833
    //*****************/
    
    return num;    
}
