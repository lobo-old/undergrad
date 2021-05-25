#include <iostream>
using namespace std;

int main(){
    int n;
    int lim1,lim2; //limites
    int a,b,c,d;
    int r[200]; //Vetor para armazenar respostas
    int cont;

    cin>>n;  //Casos de teste
    for(int i=0;i<n;i++){  //Numero de testes
        cont=0;
        cin>>lim1>>lim2;
        for(int j=lim1;j<=lim2;j++){
            d = j%10;
            c = (j/10)%10;
            b = (j/100)%10;
            a =  j/1000; 
            
            
            
            if(a==0 && b==0 && c==0)
                    cont++;
            else {
                 if(a==0 && b==0) { 
                    if(c!=d)
                        cont++;
                 }
                 else{
                      if(a==0){          
                           if(b!=c && b!=d && c!=d)
                                   cont++;
                                   }
                     else
                          if(a!=b && a!=c && a!=d && b!=c && b!=d && c!=d)                     
                                  cont++;
                          
                 }
            }
        }
        cout<<cont<<endl;             
    }
    
    system("pause>null");
    return 0;
}
