#include <iostream>
#include <vector>
#include <algorithm>

int longestCommonSubsequence(int n, int m, const std::vector<int>& X, const std::vector<int>& Y) {
    std::vector<int> dp(m + 1, 0);

    for (int i = 1; i <= n; ++i) {
        int prev = 0; 
        for (int j = 1; j <= m; ++j) {
            int temp = dp[j]; 
            if (X[i - 1] == Y[j - 1]) {
                dp[j] = prev + 1;
            } else {
                dp[j] = std::max(dp[j], dp[j - 1]);
            }
            prev = temp;
        }
    }

    return dp[m];
}

int main() {
    int n, m;
    std::cin >> n >> m;

    std::vector<int> X(n);
    for (int i = 0; i < n; ++i) {
        std::cin >> X[i];
    }

    std::vector<int> Y(m);
    for (int i = 0; i < m; ++i) {
        std::cin >> Y[i];
    }

    int result = longestCommonSubsequence(n, m, X, Y);
    std::cout << result << std::endl;

    return 0;
}
