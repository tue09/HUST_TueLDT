#include <iostream>
#include <vector>
#include <queue>
#include <cstring>

using namespace std;

const int MAXN = 100005;

vector<int> graph[MAXN];
int color[MAXN];

bool isBipartite(int start, int n) {
    queue<int> q;
    q.push(start);
    color[start] = 1;

    while (!q.empty()) {
        int u = q.front();
        q.pop();

        for (int v : graph[u]) {
            if (color[v] == -1) {
                color[v] = 1 - color[u];
                q.push(v);
            } else if (color[v] == color[u]) {
                return false;
            }
        }
    }

    return true;
}

int main() {
    int N, M;
    cin >> N >> M;

    memset(color, -1, sizeof(color));
    for (int i = 0; i < M; ++i) {
        int u, v;
        cin >> u >> v;
        graph[u].push_back(v);
        graph[v].push_back(u);
    }

    int startNode = 1;  
    bool result = isBipartite(startNode, N);

    cout << result << endl;

    return 0;
}
