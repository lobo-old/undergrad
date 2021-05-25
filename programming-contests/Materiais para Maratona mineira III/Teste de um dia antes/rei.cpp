#include<iostream>
#include<cmath>
#include<sstream>
#include<cctype>
#include<map>
#include<set>
#include<stack>
#include<queue>
#include<vector>
#include<string>
#include<algorithm>
#include<utility>

using namespace std;

int main(){
	int N=1;
	
	
	while(true){
	cin >> N;
	if(N==0)
		break;
	
	if(N == 1){
		cout << 8<<endl;
	}else
		cout << (2*N+1)*(2*N+1)<<endl;
	
	}
return 0;
}
