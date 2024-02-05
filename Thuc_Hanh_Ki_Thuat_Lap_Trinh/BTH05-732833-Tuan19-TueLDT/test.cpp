
/*
Bài tập 5.9: Xây tháp*/
#include <bits/stdc++.h>
using namespace std;
//Le Dinh Tri Tue - 0909 - 732833
typedef struct {
    int x, y, z;
} block;
int n;
block a[100];
int maxh[100];

void input(){
    cin >> n;
    if (n == 0) exit(0);
    int x, y, z;
    for (int i = 1; i <= n; i++){
        cin >> x >> y >> z;
        a[3 * i - 2].x = x;
        a[3 * i - 2].y = y;
        a[3 * i - 2].z = z;
        a[3 * i - 1].x = y;
        a[3 * i - 1].y = z;
        a[3 * i - 1].z = x;
        a[3 * i].x = z;
        a[3 * i].y = x;
        a[3 * i].z = y;
    }
    for(int i = 0; i < 100;i++){
        maxh[i] = 0;
    }
}
//Le Dinh Tri Tue - 0909 - 732833
int dp(int i){
    if (maxh[i] != 0) return maxh[i];
    maxh[i] = a[i].z;
    for(int j = 1; j <= 3*n; j++){
        if (a[i].x < a[j].x && a[i].y < a[j].y || 
            a[i].x < a[j].y && a[i].y < a[j].x){
            maxh[i] = max (maxh[i], a[i].z + dp(j));
        }
    }
    return maxh[i];
}
//Le Dinh Tri Tue - 0909 - 732833 
int main(){
    cout << "Le Dinh Tri Tue - 0909 - 732833" << endl;
    int cnt = 1;
    while(1){
        int res = 0;
        input();
        for(int i = 1; i <= 3 * n; i++){
            res = max(res, dp(i));
        }
        printf("Case %d: maximum height = %d\n", cnt++, res);
    }
    return 0;
}