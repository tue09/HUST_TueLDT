
#include <iostream>
#include <limits.h>
#include <queue>
#include <string.h>
 
int N, M; 

bool bfs(int rGraph[100][100], int s, int t, int parent[])
{
    bool visited[N];
    memset(visited, 0, sizeof(visited));
 
    std::queue<int> q;
    q.push(s);
    visited[s] = true;
    parent[s] = -1;
 
    while (!q.empty()) {
        int u = q.front();
        q.pop();
 
        for (int v = 0; v < N; v++) {
            if (visited[v] == false && rGraph[u][v] > 0) {

                if (v == t) {
                    parent[v] = u;
                    return true;
                }
                q.push(v);
                parent[v] = u;
                visited[v] = true;
            }
        }
    }
    return false;
}
 
int maxFlow(int graph[100][100], int s, int t)
{
    int u, v;

    int rGraph[100][100]; 
    for (u = 0; u < N; u++)
        for (v = 0; v < N; v++)
            rGraph[u][v] = graph[u][v];
 
    int parent[N]; 
    int max_flow = 0; 
 
    while (bfs(rGraph, s, t, parent)) {
        int path_flow = 999999;
        for (v = t; v != s; v = parent[v]) {
            u = parent[v];
            path_flow = std::min(path_flow, rGraph[u][v]);
        }
 
        for (v = t; v != s; v = parent[v]) {
            u = parent[v];
            rGraph[u][v] -= path_flow;
            rGraph[v][u] += path_flow;
        }
 
        max_flow += path_flow;
    }
 
    return max_flow;
}
 
int main()
{
    std::cin >> N >> M;
    int s, t;
    std::cin >> s >> t;
    int graph[100][100];
    for (int i = 0; i < N; i++){
        for (int j = 0; j < N; j++){
            graph[i][j] = 0;
        }
    }
    for (int i = 0; i < M; i++){
        int u, v, capa;
        std::cin >> u >> v >> capa;
        graph[u - 1][v - 1] = capa;;
    }

    std::cout << maxFlow(graph, s - 1, t - 1);
 
    return 0;
}