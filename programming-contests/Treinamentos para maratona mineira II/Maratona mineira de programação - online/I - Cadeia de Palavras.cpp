#include <iostream>
#include <cstdio>
#include <cstring>
using namespace std;

int compara(const void *a, const void *b)
{
    return strcmp((char *)a,(char *)b);
}

int main(){
    int n;
    cin>>n;
    int cont;
    
    //Palavras dodicionário
    char d[n][11];
    for(int i=0;i<n;i++)
        cin>>d[i];
    
    // Palavras para testar
    int t;
    cin>>t;
    char T[t][11];    
    for(int i=0;i<t;i++)
        cin>>T[i];

    qsort(d,n,11*sizeof(char),compara);
        
    for(int j=0;j<t;j++){ 
        cout<<T[j]<<":";       
        for(int i=0;i<n;i++){
                cont =0;
                if(strlen(T[j])== strlen(d[i]))
                    for(int k=0;k<strlen(d[i]);k++){
                        if(T[j][k]!=d[i][k])
                            cont++;
                        if(cont==2)
                            break;
                    }
                    
                    if(cont==1)
                    cout<<" "<<d[i];
        }                  
        cout<<endl;
    }
                       
            
    
    system("pause>null");
    return 0;
}
