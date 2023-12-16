/*Bài 3.7. Sử dụng phương pháp khử đệ quy bằng stack, hãy liệt kê 
các xâu nhị phân độ dài n không có k bit 1 nào liên tiếp
*/
#include <bits/stdc++.h>
using namespace std;
// Le Dinh Tri Tue - 0909 - 732833
struct state{
    int i, j, old_L;
    //# constructor
    state(int _i = 0, int _j = 0, int _L = 0):
        i(_i), j(_j), old_L(_L){}
};

int main() {
    // Le Dinh Tri Tue - 0909 - 732833
    int n, k;
    cin >> n >> k;
    int x[n+1];
    stack<state> s;
    //# number of consecutive suffix 1
    int L = 0;
    s.push(state(1, 0));
    while (!s.empty()){
        state &top = s.top();
        //# if a new binary sequence is found
        if (top.i > n){
            for (int i = 1; i <= n; ++i)
                cout << x[i] << " \n"[i == n];
            s.pop();
        continue;
        }

    //# Khử đệ quy
    // Le Dinh Tri Tue - 0909 - 732833

        if(top.j>0) L = top.old_L;

        if(top.j>1){
            s.pop();
            continue;
        }

        if(L+1<k || top.j==0){
            x[top.i] = top.j;
            top.old_L = L;
            if(top.j){
                L = L + 1;
            } else {L = 0;}
            s.push(state(top.i+1,0));
        }
        top.j++;
    // Le Dinh Tri Tue - 0909 - 732833
    /*****************/
    }
    return 0;
}