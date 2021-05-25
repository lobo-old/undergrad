#include<iostream>
#include<vector>
#include<map>
#include<set>
#include<queue>
#include<string>
using namespace std;

int main(){
    int cont;
    
    while(true){
        string palavra;
        string aux;
        cin >> palavra;
        if(palavra == "#")
                break;
      
        
        for(int i=0;i<palavra.length();i++){
            if(palavra[i]!='A' && palavra[i]!='E' && palavra[i]!='I' && palavra[i]!='O' && palavra[i]!='U'){
                cont=0;
                              
                for(int j = i; palavra[j]!='A' && palavra[j]!='E' && palavra[j]!='I' && palavra[j]!='O' && palavra[j]!='U'; j++){
                    aux[j] = palavra[j];
                    cont++;
                }
                cout<<aux;    
                
                for(int k=0; k<cont ; k++){
                    palavra[k] = aux[aux.length() -k];
                    i++;
                }
                cout<<aux;
                system("pause>null");
            }
        }
        
    
        cout<<palavra;

        //for(int w=0;w<palavra.length();w++)
//            cout<<palavra[w];
    }
  
    

    
    
    
    system("pause");
    return 0;
    }
