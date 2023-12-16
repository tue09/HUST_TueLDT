#include <bits/stdc++.h>
int n, k;
unsigned long long int process(std::vector<std::pair<int, int>> &infor){
    unsigned long long int res = 0;
    int current = 0;
    std::vector<bool> visited;
    visited.resize(n + 1, false);
    while(true){
        int minDis = INT_MAX;
        for (int i = 0; i < infor.size(); ++i){
            if (!visited[i]){
                if (std::get<0> (infor[i]) - std::get<0> (current)){
                    
                }
            }
        }
    }
}

int main(){
    std::cin >> n >> k;
    std::vector<std::pair<int, int>> infor;
    infor.push_back({0, 0});
    for (int i = 0; i < n; ++i){
        int a, b;
        std::cin >> a >> b;
        infor.push_back({a, b});
    }
    return 0;
}