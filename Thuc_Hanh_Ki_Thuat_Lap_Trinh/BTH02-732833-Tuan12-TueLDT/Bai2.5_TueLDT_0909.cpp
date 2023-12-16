/*Bài 2.5. Viết các toán tử tính tổng, hiệu, tích và thương của hai số phức
//Le Dinh Tri Tue - 0909 - 732833
*/
#include <iostream>
#include <ostream>
#include <math.h>
#include <iomanip> 

using namespace std;
//Le Dinh Tri Tue - 0909 - 732833
// Struct của 1 số phứphức
struct Complex {
    double real;
    double imag;
};
//Le Dinh Tri Tue - 0909 - 732833
//Triển khai operater +
Complex operator + (Complex a, Complex b) {
    /*****************
    # YOUR CODE HERE #
    *****************/
    Complex x;
    x.real = a.real + b.real;
    x.imag = a.imag + b.imag;
    return x;
}
//Le Dinh Tri Tue - 0909 - 732833
//Triển khai operator -
Complex operator - (Complex a, Complex b) {
    /*****************
    # YOUR CODE HERE #
    *****************/
    Complex x;
    x.real = a.real - b.real;
    x.imag = a.imag - b.imag;
    return x;
}
//Le Dinh Tri Tue - 0909 - 732833
// Triển khai operator *
Complex operator * (Complex a, Complex b) {
    /*****************
    # YOUR CODE HERE #
    *****************/
    Complex x;
    x.real = a.real*b.real - a.imag*b.imag;
    x.imag = a.real*b.imag + a.imag*b.real;
    return x;
}
//Le Dinh Tri Tue - 0909 - 732833
// Triển khai operator /
Complex operator / (Complex a, Complex b) {
    /*****************
    # YOUR CODE HERE #
    *****************/
    Complex x;
    x.real = (a.real*b.real + a.imag*b.imag)/(pow(b.real, 2) + pow(b.imag, 2));
    x.imag = (-a.real*b.imag + a.imag*b.real)/(pow(b.real, 2) + pow(b.imag, 2));
    return x;
}
//Le Dinh Tri Tue - 0909 - 732833
ostream& operator << (ostream& out, const Complex &a) {
    out << '(' << std::setprecision(2) << a.real << (a.imag >= 0 ? '+' : '-') << std::setprecision(2) << fabs(a.imag) << 'i' << ')';
    return out;
}
//Le Dinh Tri Tue - 0909 - 732833
int main() {
    double real_a, real_b, img_a, img_b;
    // Nhập vào phần thực và phần ảo của 2 số phức a và bb
    cin >> real_a >> img_a;
    cin >> real_b >> img_b;
    //Le Dinh Tri Tue - 0909 - 732833
    Complex a{real_a, img_a};
    Complex b{real_b, img_b};
    //Le Dinh Tri Tue - 0909 - 732833
    cout << a << " + " << b << " = " << a + b << endl;
    cout << a << " - " << b << " = " << a - b << endl;
    cout << a << " * " << b << " = " << a * b << endl;
    cout << a << " / " << b << " = " << a / b << endl;
    
    return 0;
}