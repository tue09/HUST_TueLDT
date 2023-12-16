#include <bits/stdc++.h>

int main(){
    int N;
    std::cin >> N;
    std::vector<int> timeMature;
    for (int i = 0; i < N; i++){
        int timee;
        std::cin >>timee;
        timeMature.push_back(timee);
    }
    std::sort(timeMature.begin(), timeMature.end(), std::greater<int>());
    int res = 0;
    for (int i = 0; i < timeMature.size(); ++i){
        res = std::max(timeMature[i] + i + 1, res);
    }
    std::cout << res + 1;
    return 0;
}