/*Cho hai std::vector, hãy xóa hết các phần tử chẵn, 
sắp xếp giảm dần các số trong cả 2 vector và trộn lại 
thành một vector cũng được sắp xếp giảm dần.*/
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
void print_vector(const vector<int> &a) {
    for (int v : a) cout << v << ' ';
    cout << endl;
}
//Le Dinh Tri Tue - 0909 - 732833
void delete_even(vector<int> &a) {
    /*****************
    # YOUR CODE HERE #
    *****************/
    for (std::vector<int>::iterator it = a.begin(); it != a.end(); ++it){
    	if (*it % 2 == 0) {
			a.erase(it);
			it--;
		}
	}
}
//Le Dinh Tri Tue - 0909 - 732833
void sort_decrease(vector<int> &a) {
    /*****************
    # YOUR CODE HERE #
    *****************/
    for (int i = 0; i < (int)a.size() - 1; ++i){
    	for (int j = i + 1; j < (int)a.size(); ++j){
    		if (a[i] < a[j]){
	    		int temp = a[i];
	    		a[i] = a[j];
	    		a[j] = temp;
	    	}
		}
	}
}
//Le Dinh Tri Tue - 0909 - 732833
vector<int> merge_vectors(const vector<int> &a, const vector<int> &b) {
    /*****************
    # YOUR CODE HERE #
    *****************/
    std::vector<int> res = a;
    for (int i = 0; i < (int)b.size(); ++i){
    	res.push_back(b[i]);
	}
	sort_decrease(res);
	return res;
}
//Le Dinh Tri Tue - 0909 - 732833
int main() {
    int m, n, u;
    std::vector<int> a, b;
    
    std::cin >> m >> n;
    for(int i = 0; i < m; i++){
        std:: cin >> u;
        a.push_back(u);
    }
    for(int i = 0; i < n; i++){
        std:: cin >> u;
        b.push_back(u);
    }
    //Le Dinh Tri Tue - 0909 - 732833
    delete_even(a);
    cout << "Odd elements of a: ";
    print_vector(a);

    delete_even(b);
    cout << "Odd elements of b: ";
    print_vector(b);

    sort_decrease(a);
    cout << "Decreasingly sorted a: ";
    print_vector(a);

    sort_decrease(b);
    cout << "Decreasingly sorted b: ";
    print_vector(b);
    //Le Dinh Tri Tue - 0909 - 732833
    vector<int> c = merge_vectors(a, b);
    cout << "Decreasingly sorted c: ";
    print_vector(c);

    return 0;
}