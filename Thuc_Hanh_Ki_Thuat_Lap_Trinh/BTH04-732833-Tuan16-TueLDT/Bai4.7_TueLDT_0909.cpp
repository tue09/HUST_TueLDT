/*Viết các hàm thực hiện các phép giao và hợp của hai tập hợp được biểu diễn bằng set*/
template<class T>
set<T> set_union(const set<T> &a, const set<T> &b) {
    set<T> union_set;
    for(T tmp : a){
        union_set.insert(tmp);
    }
    for(T tmp : b){
        union_set.insert(tmp);
    }
    return union_set;
}
//Le Dinh Tri Tue - 0909 - 732833
template<class T>
set<T> set_intersection(const set<T> &a, const set<T> &b) {
    set<T> c;
    for(T v : a){
        int index = 0;
        for(T u : b){
            if(v == u){
                index++;
                break;
            }
        }
        if(index != 0) c.insert(v);
    }
    return c;
}
//Le Dinh Tri Tue - 0909 - 732833
