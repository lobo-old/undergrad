#include<iostream>
#include<vector>
#include<map>
#include<set>
#include<queue>
using namespace std;

int main(){
    
    
    int n;
    
    while(true){
    
    queue<int> fila;                            
    cin >> n;
    if(n ==0)
    break;
    
    for(int i=1; i<=n; i++)
            fila.push(i);
    
    for(int i=1;i<n;i++){
    fila.pop();
    fila.push( fila.front() );
    fila.pop();
    }
    cout<<fila.front() << endl;
    

    
    
    }
    
    return 0;
    }
