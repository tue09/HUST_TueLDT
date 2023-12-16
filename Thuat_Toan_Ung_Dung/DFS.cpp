#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

void dfs(vector<vector<int>>& graph, vector<bool>& visited, int current) {
    visited[current] = true;
    cout << current + 1 << " ";

    vector<int> neighbors = graph[current];
    sort(neighbors.begin(), neighbors.end()); 

    for (int neighbor : neighbors) {
        if (!visited[neighbor]) {
            dfs(graph, visited, neighbor);
        }
    }

}

int main() {
    int numNodes, numEdges;
    cin >> numNodes >> numEdges;

    vector<vector<int>> graph(numNodes);
    vector<bool> visited(numNodes, false);

    for (int i = 0; i < numEdges; i++) {
        int u, v;
        cin >> u >> v;
        graph[u - 1].push_back(v - 1);
        graph[v - 1].push_back(u - 1);
    }

    int startNode = 0;
    while (true){
        bool flag = false;
        for (int i = 0; i < numNodes; i++){
            if (visited[i] == false){
                startNode = i;
                flag = true;
                break;
            }
        }
        if (flag == false){
            break;
        }
        dfs(graph, visited, startNode);

    }

    return 0;
}
