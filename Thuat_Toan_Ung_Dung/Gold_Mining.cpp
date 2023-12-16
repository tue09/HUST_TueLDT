#include <bits/stdc++.h>

int main() {
    std::ios_base::sync_with_stdio(false); 
	std::cin.tie(0); std::cout.tie(0);
    int n, L1, L2;
    std::cin >> n >> L1 >> L2;

    std::vector<int> a(n + 1);
    for (int i = 1; i <= n; ++i) {
        std::cin >> a[i];
    }

    std::vector<int> dp(n + 1, 0);

    for (int i = 1; i <= n; ++i) {
        dp[i] = a[i];
        for (int j = L1; j <= L2 && i > j; ++j) {
            int ress = dp[i - j] + a[i];
            if (ress > dp[i]){
                dp[i] = ress;
            }
        }
    }

    int maxx = 0;
    for (int i = 1; i <= n; i++){
        if (maxx < dp[i]){
            maxx = dp[i];
        }
    }
    std::cout << maxx;

    return 0;
}
