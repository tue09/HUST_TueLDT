#include <bits/stdc++.h>
int n, k;
int sum = 0;
std::vector<int> arr;
void Try(int m){
    int sizee = arr.size();
    if (m == k){
        if (sum == n){
            for (int i = 0; i < sizee; ++i){
                std::cout << arr[i] << " ";
            }
            std::cout << "\n";
        }
        return;
    }
    if (sizee > 0){
        if (sum + (k - m)*arr[sizee - 1] > n){
            return;
        }
    }
    if (sizee == 0){
        for (int i = 1; i < n; i++){
            arr.push_back(i);
            sum = sum + i;
            Try(m + 1);
            sum = sum - i;
            arr.pop_back();
        }
    } else {
        for (int i = arr[sizee - 1]; i < n; i++){
            arr.push_back(i);
            sum = sum + i;
            Try(m + 1);
            sum = sum - i;
            arr.pop_back();
        }
    }
}

int main() {
    std::cin >> k >> n;
    Try(0);
    return 0;
}