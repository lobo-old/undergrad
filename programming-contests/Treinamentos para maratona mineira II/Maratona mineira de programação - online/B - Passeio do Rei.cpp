#include <iostream>
using namespace std;

int main(){
    int n;
    int r;
    
    while(true){
        cin>>n;
        if(n==0)
            break;
            
    if(n==1)
        r=8;
    else
        r=(2*n +1)*(2*n +1);
        
    cout<<r<<endl;    
    }
    return 0;
}
