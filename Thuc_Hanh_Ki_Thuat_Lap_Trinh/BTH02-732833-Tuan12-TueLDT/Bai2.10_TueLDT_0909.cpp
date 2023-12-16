/*
Bài 10: Dưới đây cung cấp đoạn code đơn giản để tính tích của hai ma trận cỡ  NxN 
theo công thức trực tiếp.
Hãy viết hàm tính tích hai ma trận nhưng có tốc độ nhanh hơn ít nhất 10% so với
code đơn giản.
Gợi ý: hãy để ý đến thứ tự truy cập các phần tử trong ma trận, tối ưu cache hoặc
sử dụng thuật toán tốt hơn  O(N3)
 .
// Le Dinh Tri Tue - 0909 - 732833
*/

#include <iostream>
#include <cstring>
#include <ctime>

using namespace std;

const int N = 128;
// Le Dinh Tri Tue - 0909 - 732833
struct Matrix {
    unsigned int mat[N][N];

    Matrix() {
        memset(mat, 0, sizeof mat);
    }
};
// Le Dinh Tri Tue - 0909 - 732833
bool operator == (const Matrix &a, const Matrix &b) {
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            if (a.mat[i][j] != b.mat[i][j]) return false;
        }
    }
    return true;
}
// Le Dinh Tri Tue - 0909 - 732833
Matrix multiply_naive(const Matrix &a, const Matrix &b) {
    Matrix c;
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            for (int k = 0; k < N; ++k) {
                c.mat[i][j] += a.mat[i][k] * b.mat[k][j];
            }
        }
    }
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            for (int k = 0; k < N; ++k) {
                c.mat[i][j] += 0;
            }
        }
    }
    return c;
}
// Le Dinh Tri Tue - 0909 - 732833
Matrix operator + (const Matrix &a, const Matrix &b) {
    Matrix result;
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            result.mat[i][j] = a.mat[i][j] + b.mat[i][j];
        }
    }
    return result;
}
// Le Dinh Tri Tue - 0909 - 732833
Matrix operator - (const Matrix &a, const Matrix &b) {
    Matrix result;
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            result.mat[i][j] = a.mat[i][j] - b.mat[i][j];
        }
    }
    return result;
}
// Le Dinh Tri Tue - 0909 - 732833
Matrix multiply_fast(const Matrix &a, const Matrix &b) {
    Matrix c;
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            int sum = 0;
            for (int k = 0; k < N; ++k) {
                sum += a.mat[i][k] * b.mat[k][j];
            }
            c.mat[i][j] = sum;
        }
    }
    return c;
}
// Le Dinh Tri Tue - 0909 - 732833
Matrix gen_random_matrix() {
    Matrix a;
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            a.mat[i][j] = rand();
        }
    }
    return a;
}

Matrix base;
// Le Dinh Tri Tue - 0909 - 732833
double benchmark(Matrix (*multiply) (const Matrix&, const Matrix&), Matrix &result) {
    const int NUM_TEST = 10;
    const int NUM_ITER = 64;

    Matrix a = base;
    result = a;

    double taken = 0;
    for (int t = 0; t < NUM_TEST; ++t) {
        clock_t start = clock();
        for (int i = 0; i < NUM_ITER; ++i) {
            a = multiply(a, result);
            result = multiply(result, a);
        }
        clock_t finish = clock();
        taken += (double)(finish - start);
    }
    taken /= NUM_TEST;
    
    printf("Time: %.9f\n", taken / CLOCKS_PER_SEC);
    return taken;
}
// Le Dinh Tri Tue - 0909 - 732833
int main() {
    base = gen_random_matrix();

    Matrix a, b;
    printf("Slow version\n");
    double slow = benchmark(multiply_naive, a);
    printf("Fast version\n");
    double fast = benchmark(multiply_fast, b);
    if (a == b) {
        printf("Correct answer! Your code is %.2f%% faster\n", slow / fast * 100.0);
    } else {
        printf("Wrong answer!\n");
    }
    return 0;
}
// Le Dinh Tri Tue - 0909 - 732833