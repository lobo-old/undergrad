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
	int n,p,min=0;
	while(1){
		cin >> n;
		if(n==0)
			break;
		min =0;	
		for(int i=0;i<n;i++){
			cin >> p;
		
			if((p%2)==0){
			min += p;
			}else{
				min += p + 1;
			}
	}
	cout << min << endl;
	}
return 0;
}
