/*
 * PROGRAMA QUE REALIZA CALCULOS SIMPLES ENVOLVENDO A QUEDA LIVRE DE UM CORPO
 */

/* EM CADA UM DOS TESTES ABAIXO, TENTE ENTENDER O QUE ACONTECE EM CADA CASO E EXPLICAR O PORQUE
 * TESTE 1: COMPILE E EXECUTE O CODIGO COMO ELE SE ENCONTRA
 * TESTE 2: DESCOMENTE APENAS AS LINHAS 29 E 69. COMPILE, EXECUTE E VEJA AS MUDANCAS
 * TESTE 3: DESCOMENTE TAMBEM A LINHA 44. COMPILE E TESTE
 * TESTE 4: COMENTE NOVAMENTE AS LINHAS 29, 44 E 69. DESCOMENTE A LINHA 45. COMPILE, EXECUTE E VEJA AS MUDANCAS
 * TESTE 5: DESCOMENTE AGORA TAMBEM A LINHA 76. COMPILE, EXECUTE E VEJA AS MUDANCAS
 * TESTE 6: COMENTE NOVAMENTE AS LINHAS 45 E 76 (VOLTE O PROGRAMA AO ESTADO ORIGINAL). DESCOMENTE A LINHA 31. COMPILE, EXECUTE E TESTE
 */

#include <iostream>
#include <cmath>

using namespace std;

float g = 9.78; // Variavel global

/*
 * Funcao que calcula a velocidade final de um corpo sujeito a uma aceleracao
 * constante apos percorrida uma certa distancia pela Equacao de Torricelli
 */
float vTorricelli(float v0, float a, float distancia) {
  float Vfinal; // Variavel local a vTorricelli
  
  Vfinal = sqrt(pow(v0,2) + 2 * a * distancia);
  cout << "Velocidade final = " << Vfinal << " (dentro da funcao vTorricelli)" << endl;
  
  //g = 9.81;
  
  return Vfinal;
}

/*
 * Funcao que aplica a equacao de Torricelli ao problema especifico da queda livre
 * isto eh, utiliza uma versao simplificada
 */
float queda(float altura) {
  float Vf, g = 9.8;
  
  Vf = sqrt(2 * g * altura);
  //cout << "Velocidade final = " << Vfinal << " (dentro da funcao queda)" << endl; 
  //cout << "Valor de Vf = " << Vf << " (dentro da funcao queda)" << endl;
  
  return Vf;
}

int main() {
  // Variaveis locais a main
  float altura;
  float Vinicial, Vfinal, Vqueda;
  
  cout << "O valor da gravidade vale " << g << "m/s2" << endl;
  
  // Inicializa velocidades com zero
  Vinicial = Vfinal = Vqueda = 0;
  
  // Queda livre de um corpo
  cout << "Informe a altura da queda: ";
  cin >> altura;
  
  Vqueda = vTorricelli(Vinicial, g, altura);
  cout << "O corpo chega ao solo com uma velocidade de " << Vqueda << "m/s" << endl;
  
  cout << "O valor da gravidade vale " << g << "m/s2" << endl;
  
  cout << "Velocidade final = " << Vfinal << " (dentro da funcao main)" << endl;
  
  cout << "Informe novamente a altura da queda: ";
  cin >> altura;
  
  cout << "O corpo chega ao solo com uma velocidade de " << queda(altura) << "m/s" << endl;
  
  cout << "O valor da gravidade vale " << g << "m/s2" << endl;
  
  //cout << "Valor de Vf = " << Vf << " (dentro da funcao main)" << endl;
  
  return 0;
}
