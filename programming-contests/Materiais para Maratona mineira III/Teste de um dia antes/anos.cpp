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
	int n,a,b,cont;
	int dig1,dig2,dig3,dig4;
	
	cin >> n ;
	
	for(int i=0;i < n;i++){
		cin >> a >> b;
		cont =0;
		for(int j=a;j<=b;j++){
		dig1 = j/1000;
		
		dig2 = (j%1000)/100;
		
		dig3 = (j%100)/10;
		
		dig4 = (j%10);
		
		if(dig1==0 && dig2==0 && dig3==0){
			dig1 =11;
			dig2 =12;
			dig3 =13;
		}else{
		if(dig1==0 && dig2==0){
			dig1 =11;
			dig2 =12;
		}else{
		if(dig1==0){
			dig1 =11;
		}
		}
		}
				
		
			if( (dig1 != dig2)&&(dig1 != dig3)&&(dig1 != dig4)&&(dig2 != dig3)&&(dig2 != dig4)&&(dig3 != dig4) ){
				cont++;
			}
		}
		cout << cont << endl;	
	}
	
	
return 0;
}
