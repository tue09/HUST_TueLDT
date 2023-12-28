/*Viết các hàm thực hiện các phép giao và hợp của hai tập hợp mờ được biểu diễn bằng map.
Trong đó mỗi phần tử được gán cho một số thực trong đoạn [0..1] biểu thị độ thuộc 
của phần tử trong tập hợp, với độ thuộc bằng 1 nghĩa là phần tử chắc chắn thuộc vào 
tập hợp và ngược lại độ thuộc bằng 0 nghĩa là phần tử chắc chắn không thuộc trong tập hợp.
Phép giao và hợp của 2 tập hợp được thực hiện trên các cặp phần tử bằng nhau của 2 tập hợp, 
với độ thuộc mới được tính bằng phép toán min và max của hai độ thuộc.*/
template<class T>
map<T, double> fuzzy_set_union(const map<T, double> &a, const map<T, double> &b) {
    map<T,double> c = a;
    for(const auto &e : b){
        if(c.count(e.first)){
            c[e.first] = max(e.second,c[e.first]);
        }
        else{
            c.insert(e);
        }
    }
    return c;
}
//Le Dinh Tri Tue - 0909 - 732833
template<class T>
map<T, double> fuzzy_set_intersection(const map<T, double> &a, const map<T, double> &b) {
    map<T,double> c;
    for(const auto &x : a){
        const auto it = b.find(x.first);
        if(it != b.end()){
            c[x.first] = min(x.second,it->second);
        }
    }
    return c;
}
//Le Dinh Tri Tue - 0909 - 732833
