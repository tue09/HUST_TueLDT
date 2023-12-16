/*
Bài 2.7. Viết hàm tính tổng các phần tử trong hai mảng.
Yêu cầu sử dụng function template để cho phép hàm làm việc với các mảng số nguyên lẫn số thực.
//Le Dinh Tri Tue - 0909 - 732833
*/

#include <iostream>
using namespace std;
//Le Dinh Tri Tue - 0909 - 732833
//# viết hàm arr_sum
/*****************
# YOUR CODE HERE #
*****************/
//Le Dinh Tri Tue - 0909 - 732833
template <typename T>
//Hàm tính tổng cả số nguyên lẫn số thực viết bằng template
T arr_sum(T arr1[], int size1, T arr2[], int size2) {
    T sum = 0;
    for (int i = 0; i < size1; ++i) {
        sum = sum + arr1[i];
    }
    for (int i = 0; i < size2; ++i) {
        sum = sum + arr2[i];
    }
    return sum;
}
//Le Dinh Tri Tue - 0909 - 732833
int main() {
    int val;
    cin >> val;
    // Hàm arr_sum xử lý với số ngunguyên
    //Le Dinh Tri Tue - 0909 - 732833
    {
        int a[] = {3, 2, 0, val};
        int b[] = {5, 6, 1, 2, 7};
        cout << arr_sum(a, 4, b, 5) << endl;
    }
    //Hàm arr_sum xử lý với số thực
    //Le Dinh Tri Tue - 0909 - 732833
    {
        double a[] = {3.0, 2, 0, val * 1.0};
        double b[] = {5, 6.1, 1, 2.3, 7};
        cout << arr_sum(a, 4, b, 5) << endl;
    }

    return 0;
}