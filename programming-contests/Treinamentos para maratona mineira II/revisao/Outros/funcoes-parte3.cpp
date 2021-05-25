#include <iostream>

using namespace std;

// Funcao para ler um inteiro de nome predefinido
int ler(char nome);
// Funcao para exibir o valor de uma variavel inteira em tela
void exibe(char nome, int a);
// Funcao misteriosa
void misterio(int a, int b);

int main() {
  int a, b;
  
  cout << "PARTE 1:" << endl;
  
  a = ler('a');
  b = ler('b');
  
  exibe('a', a);
  exibe('b', b);
  
  exibe('a', b);
  exibe('b', a);
  
  
  cout << endl << "PARTE 2:" << endl;
  a = 3;
  b = 7;
  exibe('a', a);
  exibe('b', b);
  misterio(a,b);
  exibe('a', a);
  exibe('b', b);
  
  // Descomente a linha abaixo para ver o que acontece
  //exibe(a,'a');
  
  return 0;
}

void exibe(char nome, int a) {
  cout << "Valor de " << nome << ": " << a << endl;
}

int ler(char nome) {
  int a; // Essa variavel eh a mesma da funcao main?
  cout << "Informe " << nome << ": ";
  cin >> a;
  
  return a;
}

void misterio(int a, int b) {
  int c;
  
  c = a;
  a = b;
  b = c;
}