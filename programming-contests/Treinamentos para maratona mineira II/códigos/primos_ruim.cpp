#include<iostream>
using namespace std;

int main(){
    int N;
        
    cout << "Este programa imprimirá os números primos até N, digite N: ";
    cin >> N;
    
    cout << "\n" << 2 << endl;
    int j;
    for(int i = 3; i<=N;i++){
            for(j = 2; j<=N/2; j++){
                  if(i%j == 0)
                    break;
                   
            }
            if(j == N/2)
                 cout << i<<endl;
    }
    
    

system("pause>null");
return 0;
}
