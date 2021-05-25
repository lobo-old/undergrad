#include <iostream>
#include <math.h>
#include <iomanip>

using namespace std;

int main () {
    
    int a, a0, r, n, an, indice = 0;
    
    cout << "Este é um programa para sequencias numéricas\nDigite a opção:\n\n1. PA\n2. PG\n\n";
    cin >> a;
    
    switch (a)
    {
    case 1:
         cout << "Opção escolhida: Progressão Aritmética\n";
         cout << "Digite o primeiro termo (a0): ";
         cin >> a0;
         cout << "Digite o valor da razão (r): ";
         cin >> r;
         cout << "Digite o número de elementos desta sequencia (n): ";
         cin >> n;
         
         cout << "Termo" << setw(15) << "número\n\n";
         while (indice <= (n-1) )
         {
         an = a0 + ( indice * r);
         cout << "a" << indice << setw(15) << an << endl;
         indice++;
         }
    break;
    
    case 2:
         cout << "Opção escolhida: Progressão Geométrica\n";
         cout << "Digite o primeiro termo (a0): ";
         cin >> a0;
         cout << "Digite o valor da razão (q): ";
         cin >> r;
         cout << "Digite o número de elementos desta sequencia (n): ";
         cin >> n;
         
         cout << "Termo" << setw(15) << "número\n\n";
         while (indice <= (n-1) )
         {
         an = a0 * pow(r, indice);
         cout << "a" << indice << setw(15) << an << endl;
         indice++;
         }
    break;
    
    default:
            cout << "Opção inválida!";
            break;
    }
    
   system("pause>null");
   return 0;
}
