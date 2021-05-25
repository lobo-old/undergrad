#include <iostream>
#include <cstdlib>
#include <math.h>
using namespace std;

int compara(const void *a , const void *b)
{
    int x = *((int *) a);
    int y = *((int *) b);
    
    if(x<y) return -1;
    if (x>y) return 1;
    if (x==y) return 0;
    
}


void ordena(int a[], int n)
{
     qsort(a,n,sizeof(int),compara);
 //    int aux;
//     for(int j=0;j<n;j++){
//     for(int i = 0;i < (n - 1); i++)
//             if(a[i] > a[i+1])
//             {
//                     aux = a[i];          
//                     a[i] = a[i+1];
//                     a[i+1] = aux;
//                     }
     }



int main(){
   int m,n,a;
   int x[72319];
   int y[72319];
   int medx,medy;
   int soma;
   
   while(true){
       cin>>m>>n>>a;
       if(m==0 && n==0 && a==0)
           break;
           
    soma=0;
    for(int i=0;i<a;i++)
        cin>>x[i]>>y[i];
        
    ordena(x,a);
    ordena(y,a);    
    
    //Marca a localização da escola
    medx = x[(a-1)/2];
    medy = y[(a-1)/2];
    
    //Somando as distâncias
    for(int i=0;i<a;i++)
        soma += abs(x[i] - medx) + abs(y[i] - medy);
        
    cout<<soma<<endl;
    }
    return 0;
}
