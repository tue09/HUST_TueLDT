/*Viết hàm void bfs(vector< list<int> > adj) thực hiện 
thuật toán BFS không sử dụng đệ quy trên đồ thị biểu diễn 
bằng danh sách kề. Đồ thị có n đỉnh được đánh số từ 1 đến n. 
Thuật toán BFS xuất phát từ đỉnh 1. 
Các đỉnh được thăm theo thứ tự ưu tiên từ trái sang phải trong danh sách kề. 
Yêu cầu hàm trả ra thứ tự các đỉnh được thăm (những đỉnh không thể thăm từ đỉnh 1 thì không phải in ra).
*/
void bfs(vector<list<int>>& adj) {
    queue<int> Q;
    vector<bool> visited(adj.size());
    Q.push(1);
    //Le Dinh Tri Tue - 0909 - 732833
    while (!Q.empty()) {
        int currentVertex = Q.front();
        Q.pop();
        //Le Dinh Tri Tue - 0909 - 732833
        if (!visited[currentVertex]) {
            cout << currentVertex << " " << std::endl; 
            visited[currentVertex] = true;
            //Le Dinh Tri Tue - 0909 - 732833
            for (auto it = adj[currentVertex].begin(); it != adj[currentVertex].end(); ++it) {
                int neighbor = *it;
                if (!visited[neighbor]) {
                    Q.push(neighbor);
                }
            }
        }
    }
}