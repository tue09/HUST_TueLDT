#include <bits/stdc++.h>

int count = 0;
int N, K1, K2;

int main(){
    std::cin >> N >> K1 >> K2;
    std::vector<int> valuee;
    valuee.resize(K2 + 1, 0);
    valuee[K1 - 1] = 1;
    valuee[K1] = 1;
    for (int i = K1 + 1; i <= N; i++){
        std::vector<int> valueefake;
        valueefake.resize(K2 + 1, 0);
        for (int i = 0; i < K1; i++){
            valueefake[i + 1] = valuee[i];
        }
        for (int i = K1; i < K2; i++){
            valueefake[i + 1] = valuee[i];
            valueefake[0] += valuee[i];
        }
        valueefake[0] += valuee[K2];
        valuee = valueefake;
    }
    int countt = valuee[0];
    for (int i = K1; i < K2 + 1; i++){
        countt += valuee[i];
    }
    std::cout << countt;
    return 0;
}
// những cái nào có K1 <= seqq < K2 thì kết quả tiếp theo có 2*seqq đó và trong mảng sẽ có thêm 1 phần tử có giá trị seqq + 1 và 1 phần tử có giá trị 0
// Những cái nào có seqq < K1 thì giá trị seqq trong dãy tiếp theo của nó sẽ được tăng 1 đơn vị
// Những cái nào có seqq = K2 thì kết quả tiếp theo có seqq và trong mảng sẽ có thêm 1 phần tử có giá trị 0