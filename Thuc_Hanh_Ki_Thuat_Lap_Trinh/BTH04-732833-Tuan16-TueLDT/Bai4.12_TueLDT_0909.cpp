/*
Cho một lược đồ gồm n cột chữ nhật liên tiếp nhau có chiều rộng bằng 1 và chiều cao lần lượt 
là các số nguyên không âm h1,h2,…,hn. Hãy xác định hình chữ nhật có diện tích lớn nhất có thể 
tạo thành từ các cột liên tiếp.
*/
#include<bits/stdc++.h>
using namespace std;
//Le Dinh Tri Tue - 0909 - 732833
int n;
vector<int> graph;
vector<vector<int>> neighbor;
vector<int> value;
void input(){
    cin >> n;
    graph.push_back(-1);//dat linh canh
    for(int i = 0 ;i<n;i++){
        int tmp;
        cin >> tmp;
        graph.push_back(tmp);
    }
    graph.push_back(-1);//linh canh
}
//Le Dinh Tri Tue - 0909 - 732833
int main(){
    input();
    for(int i = 1;i<=n;i++){
        int part = graph.at(i);
        vector<int> a;
        a.push_back(part);
        //Le Dinh Tri Tue - 0909 - 732833
        int now = i;
        while(true){
            if(graph.at(now - 1) < part){
                break;
            } else {
                a.push_back(graph.at(now - 1));
                now -= 1;
            }
        }
        now = i;
        while(true){
            if(graph.at(now + 1) < part){
                break;
            } else {
                a.push_back(graph.at(now + 1));
                now += 1;
            }
        }
        value.push_back(part*a.size());
    }
    //Le Dinh Tri Tue - 0909 - 732833
    sort(value.rbegin(),value.rend());
    cout << value.at(0);
}