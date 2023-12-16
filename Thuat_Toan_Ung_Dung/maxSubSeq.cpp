#include <bits/stdc++.h>


int maxSubSeq(int n, std::vector<int> &array){
    std::vector<int> maxSeqIndex = {array[0]};
    for (int i = 1; i < n; ++i){
        int temp = std::max(array[i], maxSeqIndex[i - 1] + array[i]);
        maxSeqIndex.push_back(temp);
    }
    int maxx = 0;
    for (int i = 0; i < n; ++i){
        maxx = std::max(maxx, maxSeqIndex[i]);
    }
    return maxx;
}

int main(){
    int n;
    std::vector<int> array;
    std::cin >> n;
    for (int i = 0; i < n; i++){
        int temp;
        std::cin >> temp;
        array.push_back(temp);
    }
    std::cout << maxSubSeq(n, array);
    return 0;
}