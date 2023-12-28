/*
Viết hàm void dfs(vector< list<int> > adj) thực hiện thuật toán DFS 
không sử dụng đệ quy trên đồ thị biểu diễn bằng danh sách kề. 
Đồ thị có n đỉnh được đánh số từ 1 đến n. Thuật toán DFS xuất phát từ đỉnh 1. 
Các đỉnh được thăm theo thứ tự ưu tiên từ trái sang phải trong danh sách kề. 
Yêu cầu hàm trả ra thứ tự các đỉnh được thăm 
(những đỉnh không thể thăm từ đỉnh 1 thì không phải in ra).*/
void dfs(vector<list<int>>& adj) {
	stack<int> S;
    vector<bool> visited(adj.size());
    S.push(1);
    //Le Dinh Tri Tue - 0909 - 732833
    while (!S.empty()) {
        int currentVertex = S.top();
        S.pop();
        //Le Dinh Tri Tue - 0909 - 732833
        if (!visited[currentVertex]) {
            if (currentVertex != 0) cout << currentVertex << " " << endl; 
            visited[currentVertex] = true;
            auto it = adj[currentVertex].end();
            while (true) {
                bool flag = false;
                it--;
                if (it == adj[currentVertex].begin()) flag = true;
                int neighbor = *it;
                if (!visited[neighbor]) {
                    S.push(neighbor);
                }
                if (flag == true) break;
            }
        }
    }
}