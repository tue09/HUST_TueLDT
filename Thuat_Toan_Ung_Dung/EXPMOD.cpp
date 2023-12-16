#include <iostream>
#include <cmath>
const unsigned long long MOD = std::pow(10, 9) + 7;

unsigned long long int powerMod(unsigned long long int a, unsigned long long int b) {
    unsigned long long int res = 1;
    a = a % MOD;

    while (b > 0) {
        if (b % 2 == 1) {
            res = (res * a) % MOD;
        }
        a = (a * a) % MOD;
        b = b/2;
    }

    return res;
}

int main() {
    unsigned long long int a, b;
    std::cin >> a >> b;

    unsigned long long int result = powerMod(a, b);
    std::cout << result;

    return 0;
}
