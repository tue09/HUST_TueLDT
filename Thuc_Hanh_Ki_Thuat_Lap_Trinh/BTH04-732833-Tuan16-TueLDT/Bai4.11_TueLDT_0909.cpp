/*
Bức tường bao quanh một lâu đài nọ được cấu thành từ n đoạn tường được đánh số từ 1 đến n
. Quân giặc lên kế hoạch tấn công lâu đài bằng cách gửi ai tên giặc đánh vào đoạn tường thứ i. 
Để bảo vệ lâu đài có tất cả s lính. Do các đoạn tường có chất lượng khác nhau nên khả năng 
bảo vệ tại các đoạn tường cũng khác nhau. Cụ thể tại đoạn tường thứ i , mỗi lính có thể đẩy 
lùi tấn công của ki tên giặc.
Giả sử đoạn tường thứ i có xi lính. Khi đó nếu số tên giặc không vượt quá xi×ki thì không có 
tên giặc nào lọt vào được qua đoạn tường này. Ngược lại sẽ có ai−xi×ki tên giặc lọt vào lâu đài 
qua đoạn tường này. Yêu cầu hãy viết chương trình phân bố lính đứng ở các đoạn tường sao cho tổng số 
lính là s và tổng số lượng tên giặc lọt vào lâu đài là nhỏ nhất.*/
#include<bits/stdc++.h>
using namespace std;
//Le Dinh Tri Tue - 0909 - 732833
void algo(){
    while(!now.empty() && s > 0){
        wall a = now.top();now.pop();
        if(a.ai <= a.ki){
            dich_da_giet += a.ai;
        } else {
            int now_enemy = a.ai - a.ki;
            now.push(wall(now_enemy,a.ki));
            dich_da_giet += a.ki;
        }

        s -= 1;
    }
}
//Le Dinh Tri Tue - 0909 - 732833
struct wall{
    int ai;
    int ki;

    wall(int ai,int ki){
        this->ai = ai;
        this->ki = ki;
    }
};
//Le Dinh Tri Tue - 0909 - 732833
struct compare{
    bool operator() (wall a, wall b){
        int ra, rb;

        if(a.ai <= a.ki) ra = a.ai;
        else ra = a.ki;

        if(b.ai <= b.ki) rb = b.ai;
        else rb = b.ki;

        return ra < rb;
    }
};
//Le Dinh Tri Tue - 0909 - 732833
int n,s;
priority_queue<wall,vector<wall>,compare> now;
int tong_dich=0,dich_da_giet=0;
void input(){
    cin >> n >> s;
    int i = 0;
    while(i<n){
        int ai,ki;
        cin >> ai >> ki;
        now.push(wall(ai,ki));
        tong_dich += ai;
        i++;
    }
}
//Le Dinh Tri Tue - 0909 - 732833
int main(){
    input();
    algo();
    cout << tong_dich - dich_da_giet;
}