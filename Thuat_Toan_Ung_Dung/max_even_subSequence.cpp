#include <bits/stdc++.h>
int n;
const int infinity = -9999999;
int maxEvenSubSeq(std::vector<int> &array, int n){
    std::vector<int> arrayEven; arrayEven.push_back(infinity);
    std::vector<int> arrayOdd; arrayOdd.push_back(array[0]);
    for (int i = 1; i < n; i++){
        arrayEven.push_back(std::max(infinity, arrayOdd[i - 1] + array[i]));
        arrayOdd.push_back(std::max(arrayEven[i - 1] + array[i], array[i]));
    }
    int maxx = 0;
    for (int i = 0; i < n; i++){
        std::cout << arrayEven[i] << " ";
        if (maxx < arrayEven[i]){
            maxx = arrayEven[i];
        } 
    }
    return maxx;
}

int main(){
    std::cin >> n;
    std::vector<int> array;
    for (int i = 0; i < n; i++){
        int temp;
        std::cin >> temp;
        array.push_back(temp);
    }
    int ress = maxEvenSubSeq(array, n);
    if (ress == infinity){
        std::cout << "NOT_FOUND";
    } else {
        std::cout << std::endl << ress;
    }
}