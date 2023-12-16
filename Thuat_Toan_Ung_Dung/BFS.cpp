#include <iostream>
#include <vector>
#include <queue>
#include <algorithm>

using namespace std;
int numNodes, numEdges;
void bfs(vector<vector<int>>& graph, int start) {
    vector<bool> visited(graph.size(), false);
    queue<int> q;

    visited[start] = true;
    q.push(start);

    while (!q.empty()) {
        int current = q.front();
        q.pop();
        cout << current + 1 << " ";

        vector<int> neighbors = graph[current];
        sort(neighbors.begin(), neighbors.end());  

        for (int neighbor : neighbors) {
            if (!visited[neighbor]) {
                visited[neighbor] = true;
                q.push(neighbor);
            }
        }
        if (q.empty()){
            bool flag = false;
            int non;
            for (int i = 0; i < numNodes; i++){
                if (visited[i] == false){
                    flag = true;
                    non = i;
                    visited[i] = true;
                    break;
                }
            }
            if (flag == true){
                q.push(non);
            }
        }
    }
}

int main() {
    cin >> numNodes >> numEdges;

    vector<vector<int>> graph(numNodes);

    for (int i = 0; i < numEdges; i++) {
        int u, v;
        cin >> u >> v;
        graph[u - 1].push_back(v - 1);
        graph[v - 1].push_back(u - 1);
    }

    int startNode;
    startNode = 0; 

    bfs(graph, startNode);

    return 0;
}
