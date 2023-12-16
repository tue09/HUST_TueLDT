#include <iostream>
#include <vector>
#include <queue>
#include <algorithm>
#include <stack>
int count;
int exac;
int numNodes, numEdges;
void hamilton(std::vector<std::vector<int>>& graph, std::vector<bool>& visited, int start) {
    if (exac == 1){
        return;
    }
    if (exac == -1){
        return;
    }
    if (count == numNodes){
        exac = 1;
        return;
    }
    if (graph[start].size() <= 1){
        exac = -1;
        return;
    }

    for (int node : graph[start]){
        if (visited[node] == true){
            continue;
        } else {
            count = count + 1;
            visited[node] = true;
            hamilton(graph, visited, node);
            visited[node] = false;
            count = count - 1;
        }
    }
}

int main() {
    int T;
    std::cin >> T;
    for (int i = 0; i < T; i++){
        std::cin >> numNodes >> numEdges;
        std::vector<std::vector<int>> graph(numNodes);
        std::vector<bool> visited(numNodes, false);
        count = 0;
        exac = 0;
        for (int j = 0; j < numEdges; j++){
            int u, v;
            std::cin >> u>> v;
            graph[u - 1].push_back(v - 1);
            graph[v - 1].push_back(u - 1);
        }
        int startNode;
        startNode = 0; 
        hamilton(graph, visited, startNode);
        if (exac == -1 or exac == 0){
            std::cout<<0<<std::endl;
        } else if (exac == 1){
            std::cout<<1<<std::endl;
        }
    }
    return 0;
}
