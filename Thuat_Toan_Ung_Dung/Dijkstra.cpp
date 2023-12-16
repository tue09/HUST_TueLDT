#include <iostream>
#include <vector>
#include <queue>

using namespace std;

const int INF = 1e9;

void dijkstra(vector<vector<pair<int, int>>>& graph, vector<int>& distance, int start) {
    int numNodes = graph.size();
    distance.assign(numNodes, INF);
    distance[start] = 0;

    priority_queue<pair<int, int>, vector<pair<int, int>>, greater<pair<int, int>>> pq;
    pq.push({0, start});

    while (!pq.empty()) {
        int u = pq.top().second;
        int dist_u = pq.top().first;
        pq.pop();

        if (dist_u != distance[u]) {
            continue; // Bỏ qua nếu đã có đường đi ngắn hơn
        }

        for (auto edge : graph[u]) {
            int v = edge.first;
            int weight = edge.second;

            if (distance[u] + weight < distance[v]) {
                distance[v] = distance[u] + weight;
                pq.push({distance[v], v});
            }
        }
    }
}

int main() {
    int numNodes, numEdges;
    cin >> numNodes >> numEdges;

    vector<vector<pair<int, int>>> graph(numNodes);
    vector<int> distance;

    for (int i = 0; i < numEdges; i++) {
        int u, v, weight;
        cin >> u >> v >> weight;
        graph[u - 1].push_back({v - 1, weight});
        //graph[v - 1].push_back({u - 1, weight});
    }

    int startNode, endNode;
    cin >> startNode;
    cin >> endNode; 

    dijkstra(graph, distance, startNode - 1);

    std::cout << distance[endNode - 1];

    return 0;
}
