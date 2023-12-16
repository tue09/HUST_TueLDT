#include <bits/stdc++.h>
int n;
const long long infinity = -9999999;
long long maxEvenSubSeq(std::vector<long long> &array, int n){
    std::vector<long long> arrayEven; 
    std::vector<long long> arrayOdd; 
    if (array[0] % 2 == 0){
      arrayEven.push_back(array[0]);
      arrayOdd.push_back(infinity);
    } else {
      arrayOdd.push_back(array[0]);
      arrayEven.push_back(infinity);
    }
    
    for (int i = 1; i < n; i++){
      if (array[i] % 2 == 0){
        arrayEven.push_back(std::max(array[i], arrayEven[i - 1] + array[i]));
        arrayOdd.push_back(std::max(infinity, arrayOdd[i - 1] + array[i]));
      } else {
        arrayEven.push_back(std::max(infinity, arrayOdd[i - 1] + array[i]));
        arrayOdd.push_back(std::max(array[i], arrayEven[i - 1] + array[i]));
      }
    }
    long long maxx = 0;
    for (int i = 0; i < n; i++){
        if (maxx < arrayEven[i]){
            maxx = arrayEven[i];
        } 
    }
    return maxx;
}

int main(){
    std::cin >> n;
    std::vector<long long> array;
    for (int i = 0; i < n; i++){
        long long temp;
        std::cin >> temp;
        array.push_back(temp);
    }
    long long ress = maxEvenSubSeq(array, n);
    if (ress == infinity){
        std::cout << "NOT_FOUND";
    } else {
        std::cout << ress;
    }
}
