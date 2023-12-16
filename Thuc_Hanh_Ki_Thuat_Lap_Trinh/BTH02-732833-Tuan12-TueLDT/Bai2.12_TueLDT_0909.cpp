/*
Bài 12: Hôm nay, cô giáo giao cho An một câu hỏi hóc búa. Cô cho một danh 
sách với mỗi phần tử có dạng <key, value> và yêu cầu An sắp xếp danh sách 
đó giảm dần theo giá trị value. Nếu 2 phần tử có value giống nhau thì sắp
xếp giảm dần theo key.
Hãy viết một chương trình sử dụng hàm nặc danh để giúp An làm bài tập.
// Le Dinh Tri Tue - 0909 - 732833
*/

#include <bits/stdc++.h> 

bool customCompare(const std::pair<int, int> &a, const std::pair<int, int> &b) {
    if (a.second == b.second) {
        return a.first > b.first;
    }
    return a.second > b.second;
}

int main() {
    std::vector<std::pair<int, int>> myList;
    int n;
    std::cin>>n;
    for (int i = 0; i < n; i++) {
        int a, b;
        std::cin>>a>>b;
        myList.push_back(std::make_pair(a, b));
    }
    std::sort(myList.begin(), myList.end(), customCompare);

    for (const auto& pair : myList) {
        std::cout<< pair.first <<" "<< pair.second <<"\n";
    }
    return 0;
}

// Le Dinh Tri Tue - 0909 - 732833