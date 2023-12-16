#include <iostream>
#include <vector>
#include <algorithm>

struct Edge {
    int u, v, w;
    Edge(int u, int v, int w) : u(u), v(v), w(w) {}
};

bool operator<(const Edge& a, const Edge& b) {
    return a.w < b.w;
}

std::vector<int> parent;

int find(int x) {
    if (parent[x] == x)
        return x;
    return parent[x] = find(parent[x]);
}

void union_sets(int a, int b) {
    a = find(a);
    b = find(b);
    if (a != b)
        parent[b] = a;
}

int main() {
    int N, M;
    std::cin >> N >> M;
    std::vector<Edge> edges;

    for (int i = 0; i < M; i++) {
        int u, v, w;
        std::cin >> u >> v >> w;
        edges.push_back(Edge(u, v, w));
    }

    sort(edges.begin(), edges.end());

    parent.resize(N + 1);
    for (int i = 1; i <= N; i++) {
        parent[i] = i;
    }

    int spanningTree = 0;
    for (Edge edge : edges) {
        if (find(edge.u) != find(edge.v)) {
            spanningTree = spanningTree + edge.w;
            union_sets(edge.u, edge.v);
        }
    }                                                                                                       

    std::cout << spanningTree << std::endl;

    return 0;
}
