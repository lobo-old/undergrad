#include<iostream>
#include<cstdio>
#include<stack>
#include<queue>
using namespace std;

int main(){
        int vag[1000];

        stack <int> pilha;
        queue <int> filaA, filaB, filaentrada;
        int n;
        

        while(true){
                bool a = true;            
                cin>>n;
                if(n==0)
                        break;
                //while(a){
                    for(int i=1;i<=n;i++){
                        filaA.push(i);                
                        cin>>vag[i];
                        //if(vag[i] ==0){
//                                  break;
//                                  a = false;
//                        }
                        filaentrada.push(vag[i]);
                    }
                        
                //if(a){                                 
                     while(filaB.size() != n){
                        while(!filaA.empty() && filaA.front()!= filaentrada.front()){
                                pilha.push(filaA.front());
                                filaA.pop();
                        }

                        filaB.push(filaA.front());
                        filaA.pop();
                        filaentrada.pop();
                        
                        while(!pilha.empty() && pilha.top()== filaentrada.front()){
                                filaB.push(pilha.top());
                                pilha.pop();
                                filaentrada.pop();
                        }


                      }

                for(int i =0; i<n ;i++){
                        cout<< filaB.front() <<" ";
                        filaB.pop();        
                }
                cout << endl;
                
                //}
                //}
        }

        system("pause");
        return 0;
}


