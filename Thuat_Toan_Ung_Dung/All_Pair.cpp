#include <iostream>
#include <vector>
int n, m;

void findShortest(std::vector<std::vector<int>> &edge){
    //std::vector<std::vector<int>> matrix = edge;
    for (int k = 1; k < n + 1; k++){
        for (int i = 1; i < n + 1; i++){
            for (int j = 1; j < n + 1; j++){
                if (i == j) {continue;}
                if ((k == i) or (k == j)) {continue;}
                if (edge[i][j] > edge[i][k] + edge[k][j]){
                    edge[i][j] = edge[i][k] + edge[k][j];
                }
                
            }
        }
    }
}


int main(){
    std::cin >> n >> m;
    std::vector<std::vector<int>> edge;
    for (int i = 0; i < n + 1; i++){
        std::vector<int> temp;
        temp.resize(n + 1, 9999);
        edge.push_back(temp);
    }
    for (int i = 0; i < m; i++){
        int x, y, z;
        std::cin >> x >> y >> z;
        edge[x][y] = z;
    }
    findShortest(edge);
    for (int i = 1; i < n + 1; i++){
        std::cout << std::endl;
        for (int j = 1; j < n + 1; j++){
            if (i == j) {
                std::cout << 0 << " ";
                continue;;
            }
            std::cout << edge[i][j] << " ";
        }
    }

    return 0;
}