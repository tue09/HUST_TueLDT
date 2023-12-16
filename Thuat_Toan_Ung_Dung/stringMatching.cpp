#include <bits/stdc++.h>

int main(){
    std::string T, P;
    std::getline(std::cin, P);
    std::getline(std::cin, T);
    int count = 0;
    int sizee = P.size();
    int ctemp = 0;
    for (int i = 0; i < T.size(); ++i){
        if (T[i] == P[ctemp]){
            ctemp++;
        } else {
            ctemp = 0;
            if (T[i] == P[ctemp]){
                ctemp++;
            } 
        }
        if (ctemp == sizee){
            count++;
            ctemp = 0;
        }
    }
    
    std::cout << count;
    return 0;
}