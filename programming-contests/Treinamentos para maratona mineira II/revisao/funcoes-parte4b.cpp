#include <iostream>
using namespace std;

// Funcao misteriosa
void misterio(int a, int b);
// Funcao misteriosa
void misterio2(int &a, int &b);

int main() {
  int a, b;
  
  cin >> a >> b;
  
  cout << "-- antes de usar as funcoes --" << endl;
  cout << "Valor de a: " << a << endl;
  cout << "Valor de b: " << b << endl;
  
  misterio(a,b);

  cout << "-- depois da funcao misterio --" << endl;
  cout << "Valor de a: " << a << endl;
  cout << "Valor de b: " << b << endl;

  misterio2(a,b);

  cout << "-- depois da funcao misterio 2 --" << endl;
  cout << "Valor de a: " << a << endl;
  cout << "Valor de b: " << b << endl;
  
  return 0;
}

void misterio(int a, int b) {
  int c;
  
  c = a;
  a = b;
  b = c;
}

void misterio2(int &a, int &b) {
  int c;
  
  c = a;
  a = b;
  b = c;
}
