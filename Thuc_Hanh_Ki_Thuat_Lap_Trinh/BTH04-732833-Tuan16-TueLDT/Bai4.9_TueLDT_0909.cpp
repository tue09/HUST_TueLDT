/*Cài đặt thuật toán Dijkstra trên đồ thị vô hướng được biểu diễn bằng 
danh sách kề sử dụng std::priority_queue
Cụ thể, bạn cần cài đặt hàm vector<int> dijkstra(const vector< vector< pair<int, int> > >&adj) 
nhận đầu vào là danh sách kề chứa các cặp pair<int, int> biểu diễn đỉnh kề 
và trọng số tương ứng của cạnh. Đồ thị gồm n đỉnh được đánh số từ 0 tới n-1. 
Hàm cần trả `vector<int>` chứa n phần tử lần lượt là khoảng cách đường đi ngắn nhất 
từ đỉnh 0 tới các đỉnh 0, 1, 2, ..., n-1.*/
#include <iostream>
#include <queue>
#include <climits>
using namespace std;
//Le Dinh Tri Tue - 0909 - 732833
vector<int> dijkstra(const vector< vector< pair<int, int> > >&adj) {
    priority_queue<pair<int,int>> S;
    vector<int> d(adj.size(),INT_MAX);
    d[0] = 0;
    S.push({0,0});
    while(!S.empty()){
        int du = -S.top().first;
        int u = S.top().second;
        S.pop();
        if(du != d[u]) continue;
        for(auto e : adj[u]){
            int v = e.first;
            int c = e.second;
            if(d[v] > d[u] + c){
                d[v] = d[u] + c;
                S.push({-d[v],v});
            }
        }
    }
    //Le Dinh Tri Tue - 0909 - 732833
    return d;
}