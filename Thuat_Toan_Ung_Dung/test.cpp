#include <bits/stdc++.h>

int main() {
    int n, L1, L2;
    std::cin >> n >> L1 >> L2;

    std::vector<int> a(n + 1);  // 1-indexed array for simplicity
    for (int i = 1; i <= n; ++i) {
        std::cin >> a[i];
    }

    // dp[i] represents the maximum total amount of gold for the warehouses ending at position i
    std::vector<int> dp(n + 1, 0);

    // dq is a double-ended queue that stores the indices of potential warehouses
    std::deque<int> dq;

    int maxGold = 0;

    for (int i = 1; i <= n; ++i) {
        // Remove warehouses that are too far to the left
        while (!dq.empty() && i - dq.front() > L2) {
            dq.pop_front();
        }

        // Remove warehouses with less gold than the current warehouse
        //while (!dq.empty() && (a[dq.back()] <= a[i])) {
        //    dq.pop_back();
        //}

        dq.push_back(i);

        int maxx = 0;
        for (int warehouse : dq){
            if (i - warehouse >= L1){
                maxx = std::max(maxx, dp[warehouse]);
            }
        }
        dp[i] = a[i] + maxx;
        // Update dp[i] based on the optimal choice of previous warehouses
        //if (i >= L1) {
        //    dp[i] = a[i] + (dq.front() >= L1 ? dp[dq.front() - 1] : 0);
        //    maxGold = std::max(maxGold, dp[i]);
        //}
        maxGold = std::max(maxGold, dp[i]);
    }

    std::cout << maxGold << std::endl;

    return 0;
}
