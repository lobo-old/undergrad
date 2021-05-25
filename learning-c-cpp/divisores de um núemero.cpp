#include <iostream>
#include <iomanip>

using namespace std;

int main (){
    
    long long int a, N;
       
    while(true)
    {
            cout << "Este programa calcula os divisores de um número inteiro N\n\nDigite o valor de N: ";
            cin >> N;
            cout << "Divisores de N: \n";
            
            a = 1; 
            while (a <= N/2)
            {
                  if (N%a == 0)
                  {
                  cout << setw(20) << a <<endl;
                  }
                  a++;    
            }
            
            cout <<  setw(20) << N << "\n\n\n";
    }   
    
    system("pause>null");
    return 0;   
}
