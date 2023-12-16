#include <bits/stdc++.h>

int main() {
    int N, T, D;
    std::cin >> N >> T >> D;

    std::vector<int> a(N);
    std::vector<int> t(N);

    for (int i = 0; i < N; i++) {
        std::cin >> a[i];
    }

    for (int i = 0; i < N; i++) {
        std::cin >> t[i];
    }

    std::vector<std::vector<int>> dp(N + 1, std::vector<int>(T + 1, 0));

    for (int i = 1; i <= N; i++) {
        for (int j = 1; j <= T; j++) {
            for (int k = std::max(0, i - D); k < i; k++) {
                if (j >= t[i - 1]) {
                    dp[i][j] = std::max(dp[i][j], dp[k][j - t[i - 1]] + a[i - 1]);
                }
            }
        }
    }

    int maxx = 0;
    for (int i = 0;i < dp.size(); i++){
        for (int j = 0; j < dp[i].size(); j++){
            maxx = std::max(maxx, dp[i][j]);
        }
    }

    std::cout << maxx << std::endl;

    return 0;
}
