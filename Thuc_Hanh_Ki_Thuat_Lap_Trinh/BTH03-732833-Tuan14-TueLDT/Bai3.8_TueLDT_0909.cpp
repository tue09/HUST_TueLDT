/*
Bài tập 8: Cân đĩa
Bạn đang muốn kiểm tra xem một vật cho trước có đúng nặng M
như người ta nói hay không. Có một cân thăng bằng và  n
quả cân. Quả thứ i nặng  mi. Hãy chỉ ra một cách cân thỏa mãn. 
Quy cách in ra đã được tích hợp trong mã nguồn dưới.*/
#include <bits/stdc++.h>
using namespace std;
// Le Dinh Tri Tue - 0909 - 732833
struct state{
    int i, j, s;
    state(int _i = 0, int _j = 0, int _s=0): i(_i), j(_j), s(_s){}
};
// Le Dinh Tri Tue - 0909 - 732833
int main() {
    int n, M;
    cin >> n >> M;
    int m[n+1];
    for (int i = 1; i <= n; ++i) cin >> m[i];
    int x[n+1];
    stack<state> s;
    //# sum of selected weights
    // Le Dinh Tri Tue - 0909 - 732833
    int sum = 0;
    s.push(state(1, -1, -m[1]));
    s.push(state(1, 0, 0));
    s.push(state(1, 1, m[1]));
    while (!s.empty()){
        state top = s.top();
        if (top.i >= n){
            if (top.s == M){
                for (int i = 1; i <= n; ++i){
                    if (x[i] == -1) cout << '-' << m[i];
                    if (x[i] == 1) cout << '+' << m[i];
                }
                cout << "=" << M;
                exit(0);
            }
            s.pop();
            continue;
        }
        // Le Dinh Tri Tue - 0909 - 732833
        //# Khử đệ quy
        s.pop();
        x[top.i]=top.j;
        s.push(state(top.i+1, -1, top.s-m[top.i+1]));
        s.push(state(top.i+1, 0,top.s));
        s.push(state(top.i+1, 1,top.s+m[top.i+1]));
    }
    cout << -1;

    return 0;
}