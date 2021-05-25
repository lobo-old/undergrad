#include <iostream>
using namespace std;

int main(){
    int n; // Numero de testes
    int bar[13];
    int aux[13];
    string p;
    int cont=0;
    
    cin>>n;
    for(int i=0;i<n;i++){
    for(int i=0;i<13;i++){ //Lê o vetor
         cin>>p;
         if(p=="A")
             bar[i]=1;
         if(p=="J")
             bar[i]=11;
         if(p=="Q")
             bar[i]=12;
         if(p=="K")
             bar[i]=13;
         if(p=="2")
             bar[i]=2;
         if(p=="3")
             bar[i]=3;
         if(p=="4")
             bar[i]=4;
         if(p=="5")
             bar[i]=5;
         if(p=="6")
             bar[i]=6;
         if(p=="7")
             bar[i]=7;
         if(p=="8")
             bar[i]=8;
         if(p=="9")
             bar[i]=9;
         if(p=="10")
             bar[i]=10;
    }
    
    
    while(true){
                
        if(bar[0]==1)
            break;
    //Realiza a inversão 
    for(int i=0; i < bar[0]; i++)
        aux[i] = bar[i];
       
    for(int i = bar[0]-1, j = 0; i >= 0 && j < bar[0]; i--, j++)
        bar[i] = aux[j];  
    
    cont++;  
    }
    cout<<cont<<endl;
    }
    
    system("pause>null");  
    return 0;
}
