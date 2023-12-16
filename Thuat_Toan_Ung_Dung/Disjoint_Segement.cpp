#include <iostream>
#include <vector>

int maxx;
int count = 0;
void disjoint_Segment(int n, std::vector<std::pair<int, int>> round){
    std::pair<int, int> current = {0, 0};
    while (true){
        std::pair<int, int> testt;
        bool flag = false;
        int endd = INT_MAX;
        int index = 0;
        for (int i = 0; i < round.size(); i++){
            if (round[i].first > current.second){
                if (round[i].second < endd){
                    endd = round[i].second;
                    testt = {round[i].first, round[i].second};
                    flag = true;
                    index = i;
                }
            }
        }
        if (flag == true){
            current = testt;
            round.erase(round.begin() + index);
            count = count + 1;
        } else {
            break;
        }
    }


}

int main(){
    int n;
    std::cin >> n;
    maxx = n;
    std::vector<std::pair<int, int>> timee;
    for (int i = 0; i < n; i++){
        int f1, f2;
        std::cin >> f1 >> f2;
        timee.push_back(std::make_pair(f1, f2));
    }

    disjoint_Segment(n, timee);
    std::cout << count;
    return 0;
}