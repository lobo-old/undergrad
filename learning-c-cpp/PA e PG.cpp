#include <iostream>
#include <math.h>
#include <iomanip>

using namespace std;

int main () {
    
    int a, a0, r, n, an, indice = 0;
    
    cout << "Este � um programa para sequencias num�ricas\nDigite a op��o:\n\n1. PA\n2. PG\n\n";
    cin >> a;
    
    switch (a)
    {
    case 1:
         cout << "Op��o escolhida: Progress�o Aritm�tica\n";
         cout << "Digite o primeiro termo (a0): ";
         cin >> a0;
         cout << "Digite o valor da raz�o (r): ";
         cin >> r;
         cout << "Digite o n�mero de elementos desta sequencia (n): ";
         cin >> n;
         
         cout << "Termo" << setw(15) << "n�mero\n\n";
         while (indice <= (n-1) )
         {
         an = a0 + ( indice * r);
         cout << "a" << indice << setw(15) << an << endl;
         indice++;
         }
    break;
    
    case 2:
         cout << "Op��o escolhida: Progress�o Geom�trica\n";
         cout << "Digite o primeiro termo (a0): ";
         cin >> a0;
         cout << "Digite o valor da raz�o (q): ";
         cin >> r;
         cout << "Digite o n�mero de elementos desta sequencia (n): ";
         cin >> n;
         
         cout << "Termo" << setw(15) << "n�mero\n\n";
         while (indice <= (n-1) )
         {
         an = a0 * pow(r, indice);
         cout << "a" << indice << setw(15) << an << endl;
         indice++;
         }
    break;
    
    default:
            cout << "Op��o inv�lida!";
            break;
    }
    
   system("pause>null");
   return 0;
}
