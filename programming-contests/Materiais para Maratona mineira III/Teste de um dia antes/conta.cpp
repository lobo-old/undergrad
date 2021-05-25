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
	int n, aux;
	int conta = 7;
	cin>>n;
	
	if(n<=10){
		cout<<conta<<endl;
		return 0;
	}
	
	if(n>10 && n<=30){
		conta += (n-10);
		cout<<conta<<endl;
		return 0;
	}
	
	if(n>30 && n<=100){
		conta += (20) + ((n-30)*2);
		cout<<conta<<endl;
		return 0;
	}
	if(n>100){
		conta += (20) + (70*2) + ((n- 100)*5);
		cout<<conta<<endl;
		return 0;
	}
}
