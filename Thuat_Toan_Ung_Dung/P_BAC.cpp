#include <iostream>
#include <vector>
#include <bitset>
#include <algorithm>
using namespace std;

const int INF = 100000;

int m, n;
vector<bitset<31>> preferences;
vector<bitset<31>> conflicts;
vector<vector<int>> loadre;
bitset<31> courseBit;
int min_load = INF;

void assignCourses(int course, vector<int> &teacher_load) {
    bool flag1 = false;
    for (int teacher = 0; teacher < m; teacher++) {
        if (teacher_load[teacher] >= min_load){
            flag1 = true;
            continue;
        }
    }
    if (flag1 == true){
        return;
    }
    if (courseBit[course] == 1){
        return;
    }
    if (course == n) {
        int max_load = *max_element(teacher_load.begin(), teacher_load.end());
        min_load = min(min_load, max_load);
        return;
    }

    for (int teacher = 0; teacher < m; teacher++) {
        if (teacher_load[teacher] >= min_load){
                continue;
        }

        if (preferences[teacher][course]) {
            if (teacher_load[teacher] == 0){
                courseBit[course] = 1;
                teacher_load[teacher]++;
                loadre[teacher].push_back(course);
                assignCourses(course + 1, teacher_load);
                loadre[teacher].pop_back();
                teacher_load[teacher]--;
                courseBit[course] = 0;
            } else {
                bool flag = false;
                for (int r = 0; r < teacher_load[teacher]; r++){
                    if (conflicts[course][loadre[teacher][r]]){
                        flag = true;
                        break;
                    }
                }
                if (flag == false){
                    courseBit[course] = 1;
                    teacher_load[teacher]++;
                    loadre[teacher].push_back(course);
                    assignCourses(course + 1, teacher_load);
                    loadre[teacher].pop_back();
                    teacher_load[teacher]--;
                    courseBit[course] = 0;
                }
            }
        }
    }
}

int main() {
    cin >> m >> n;
    preferences.resize(m);
    loadre.resize(m);
    conflicts.resize(n);
    min_load = 2*(n/m);
    for (int i = 0; i < 31; i++){
        courseBit[i] = 0;
    }
    for (int i = 0; i < m; ++i) {
        int k;
        cin >> k;
        for (int j = 0; j < k; ++j) {
            int course;
            cin >> course;
            preferences[i][course - 1] = 1;
        }
    }

    int num_conflicts;
    cin >> num_conflicts;

    for (int i = 0; i < num_conflicts; ++i) {
        int course1, course2;
        cin >> course1 >> course2;
        conflicts[course1 - 1][course2 - 1] = 1;
        conflicts[course2 - 1][course1 - 1] = 1;
    }

    vector<int> teacher_load(m, 0);
    assignCourses(0, teacher_load);

    if (min_load == 100000) {
        cout << -1 << endl;
    } else {
        cout << min_load << endl;
    }

    return 0;
}
