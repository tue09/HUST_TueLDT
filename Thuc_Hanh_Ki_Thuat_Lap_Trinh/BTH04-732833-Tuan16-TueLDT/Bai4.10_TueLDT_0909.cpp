/*Xây dựng một máy tìm kiếm (search engine) đơn giản.
Cho N văn bản và Q truy vấn. Với mỗi truy vấn, cần trả về 
văn bản khớp với truy vấn đó nhất. Sử dụng phương pháp tính điểm TF-IDF:*/
#include<bits/stdc++.h>
using namespace std;
#define N 10000

vector<string> doc[N];
map<string, int> f[N];
map<string, int> df;
int maxf[N], n;
//Le Dinh Tri Tue - 0909 - 732833
double TF(string t, int d){
	if(f[d][t] == 0) return 0;
	return 0.5 + 0.5 * f[d][t] / maxf[d];
}
//Le Dinh Tri Tue - 0909 - 732833
double IDF(string t){
	return log2(1.0 * n / df[t]);
}

double score(string t, int d){
	if(df.count(t) == 0) return 0;
	return TF(t, d) * IDF(t);
}
//Le Dinh Tri Tue - 0909 - 732833
int main(){
	ios_base::sync_with_stdio(0);
	cin.tie(0);
	cout.tie(0);
    //Le Dinh Tri Tue - 0909 - 732833
	cin >> n;
	for(int i = 0; i < n; i++){
		string t;
		cin >> t;
		string w;
		map<string, int> d_f;
    //Le Dinh Tri Tue - 0909 - 732833
		for(char c : t){
            if (c != ',') w.push_back(c);
			else {
                d_f[w]++;
                if(d_f[w] == 1) df[w]++;
				doc[i].push_back(w);
				f[i][w]++;
				w = "";
				continue;
			}
		}
		d_f[w]++;
        if(d_f[w] == 1) df[w]++;
		doc[i].push_back(w);
		f[i][w]++;

		for(auto it : f[i]){
			maxf[i] = max(maxf[i], it.second);
		}
	}
    //Le Dinh Tri Tue - 0909 - 732833
	int q;
	cin >> q;
	while(q--){
		vector<string> query;
		string t;
		cin >> t;
		string w;

		for(char c : t){
			if(c != ',') w.push_back(c);
			else{
				query.push_back(w);
				w = "";
				continue;
			}
		}
    //Le Dinh Tri Tue - 0909 - 732833
		query.push_back(w);
		double tempscore = -1e9;
		int document = 0;
		int d = 0;
		while (d < n){
            double totalscore = 0;

			for(string t : query){
				totalscore += score(t, d);
			}
			d++;

			if(totalscore > tempscore){
				tempscore = totalscore;
				document = d;
			}
		}
		cout << document << "\n";
	}
}