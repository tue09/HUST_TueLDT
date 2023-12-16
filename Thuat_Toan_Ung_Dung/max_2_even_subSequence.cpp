#include <bits/stdc++.h>
int n;
const int infinity = -9999999;
int maxEvenSubSeq(std::vector<int> &array, int n){
    std::vector<int> arrayMax; arrayMax.push_back(array[0]);
    for (int i = 1; i < n; i++){
        arrayMax.push_back(std::max(arrayMax[i - 1] + array[i], array[i]));
    }
    int maxx = 0;
    for (int i = 0; i < n; i++){
        if ((maxx < arrayMax[i]) and (arrayMax[i] % 2 == 0)){
            maxx = arrayMax[i];
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
        std::cout << ress;
    }
}