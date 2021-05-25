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
	int n;
	int div=0;
	while(true){
		cin>>n;
		if(n==0)
			break;

		for(int i=2;i<=(n/2);i++){
			if(n%i==0){
				div++;
			}
			if((i*i)==n){
				div++;
			}
		}
		cout<<(div/2)<<endl;
		div=0;
	}
return 0;
}
