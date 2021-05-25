#include <iostream>

using namespace std;

int maior_menor(int lista[], int tamanho, int &maior);

int main() {
  int t = 5;
  int valores[t];
  
  // Preenche arranjo
  cout << "Informe os valores da listagem:" << endl;
  for (int i = 0; i < t; i++) {
    cout << "Valor " << (i+1) << ": ";
    cin >> valores[i];
  }
  
  int mai, men;
  men = maior_menor(valores, t, mai);
  
  cout << "O menor dos valores digitados vale: " << men << endl;
  cout << "O maior dos valores digitados vale: " << mai << endl;
  return 0;
}

int maior_menor(int lista[], int tamanho, int &maior) {
  maior = lista[0];
  int menor = lista[0];
  if (tamanho > 1) {
    for (int i = 1; i < tamanho; i++) {
      if (lista[i] > maior) {
	maior = lista[i];
      }
      if (lista[i] < menor) {
	menor = lista[i];
      }
    }
  }
  
  return menor;
}
