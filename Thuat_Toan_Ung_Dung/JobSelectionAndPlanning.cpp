#include <bits/stdc++.h>

int main(){
    int n;
    std::cin >> n;
    std::map<int, std::vector<int>> job2;
    int maxDeadline = 0;
    for (int i = 0; i < n; ++i){
        int deadline, profit;
        std::cin >> deadline >> profit;
        if (maxDeadline < deadline){
            maxDeadline = deadline;
        }
        job2[deadline].push_back(profit);
    }
    for (const auto pair : job2){
        std::sort(job2[pair.first].begin(), job2[pair.first].end(), std::greater<int>());
    }
//realJob[i] = phần tử lớn nhất có deadline >= i
    int countt = 0;
    std::vector<int> ele;
    std::vector<bool> visited(maxDeadline + 1, false);
    for (int i = maxDeadline; i > 0; i--){
        if (job2[i].size() != 0){ele.push_back(i);}
        int maxx = 0;
        int index = -1;
        int index2 = 0;
        for (int k = 0; k < ele.size(); ++k){
            int cp = job2[ele[k]][0];
            if (cp > maxx){
                maxx = cp;
                index = ele[k];
                index2 = k;
            }
        }
        if (index != -1){
            countt = countt + maxx;
            job2[index].erase(job2[index].begin());
            if (job2[index].size() == 0){
                ele.erase(ele.begin() + index2);
            }
        }
    }

    std::cout << countt;
    return 0;
}
