#include <iostream>
#include <cmath>
#include <ctime>

using namespace std;

// Uma funcao pode ser apenas declarada no inicio do programa (prototipo) e implementada posteriormente
float distancia(float Xa, float Ya, float Xb, float Yb);

// Versao compacta
float distancia2(float Xa, float Ya, float Xb, float Yb) {
    return sqrt(pow(Xa - Xb, 2) + pow(Ya - Yb, 2));
}

// Calcula a media de notas contidas em um arranjo
// Funcoes podem receber arranjos como parametros
// Funcoes podem ter parametros de tipos diversificados
float media(float notas[], int numNotas) {
    float m = 0;
    for (int i = 0; i < numNotas; i++) {
        m += notas[i];
    }
    
    return m /= numNotas;
}

// Calcula o desvio padrao de notas contidas em um arranjo
float desvioPadrao(float notas[], int numNotas) {
    float med, desv = 0;
    
    // Uma funcao pode utilizar outra
    med = media(notas, numNotas);
    
    for (int i = 0; i < numNotas; i++) {
        desv += pow(notas[i] - med, 2);
    }
    desv /= (numNotas - 1);
    desv = sqrt(desv);
    
    return desv;
}

// Verifica se dois valores inteiros estao ordenados ou nao
// Uma funcao pode ter tipo de retorno nao numerico
bool emOrdem(int a, int b) {
    if (a < b) {
        return true;
    } else {
        return false;
    }
}

// Uma funcao pode nao ter parametros
// Pede ao usuario um valor inteiro e o retorna
int leInteiro() {
    int x;
    
    cout << "Informe um numero inteiro: ";
    cin >> x;
    
    return x;
}

// Uma funcao pode nao ter retorno
// Exibe em tela uma matriz 3 X 3 de inteiros dada
void exibeMatriz(int matriz[3][3], char nome) {
    cout << "Exibindo matriz " << nome << ":" << endl;
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            cout << matriz[i][j] << " ";
        }
        cout << endl;
    }
    cout << endl;
}

// Uma funcao pode nao ter nem retorno nem parametro
// Exibe a hora atual na tela
void exibeHora() {
    // Recursos da biblioteca ctime
    time_t timer;
    time(&timer);
    cout << ctime(&timer) << endl;
}

int main() {
    // Declara o arranjo de notas e o numero de notas
    float n[4] = {23.3, 2.1, 24.2, 15.3};
    int nNotas = 4;
    
    // O resultado de uma funcao pode ser direcionado diretamente para a tela
    cout << "Media = " << media(n, nNotas) << endl;
    // Os valores passados para os parametros podem ser constantes
    cout << "Desvio padrao = " << desvioPadrao(n, 4) << endl;
    
    // O resultado de uma funcao pode ser atribuido a uma variavel
    float d1, d2;
    d1 = distancia(2.3, 3.2, 12, 23.2);
    d2 = distancia2(2.3, 3.2, 12, 23.2);
    
    cout << "Distancia pelo metodo 1: " << d1 << endl;
    cout << "Distancia pelo metodo 2: " << d2 << endl;
    
    int x = 4, y = 5;
    bool teste = emOrdem(x, y);
    cout << "Teste 1: Os valores " << x << " e " << y << " estao";
    if (teste) {
        cout << " em ordem" << endl;
    } else {
        cout << " fora de ordem" << endl;
    }
    
    // O resultado de uma funcao com retorno logico pode ser utilizado diretamente
    // em um teste condicional
    cout << "Teste 2: Os valores " << y << " e " << x << " estao";
    if (emOrdem(y,x)) { // Note a inversao dos parametros com relacao ao exemplo anterior
        cout << " em ordem" << endl;
    } else {
        cout << " fora de ordem" << endl;
    }
    
    int inteiro;
    // Chamada de funcao sem parametros
    inteiro = leInteiro();
    cout << "O inteiro lido foi: " << inteiro << endl;
    
    int m[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}; // Cria uma matriz de inteiros
    // Chamada de funcao sem retorno
    exibeMatriz(m, 'A'); // Passa o caractere A como nome da matriz
    
    // Chamada de funcao sem parametros e sem retorno
    exibeHora();
    
    return 0;
}

// Calcula a distancia entre dois pontos, dadas suas coordenadas cartesianas
float distancia(float Xa, float Ya, float Xb, float Yb) {
    // Uma funcao pode declarar variaveis proprias:
    float somatorio = 0;
    float d;
    
    // As variaveis que compoem um parametro podem ser utilizadas diretamente
    // nas funcoes
    somatorio = pow(Xa - Xb, 2); // Quadrado das diferencas das abscissas
    somatorio += pow(Ya - Yb, 2); // Quadrado das diferencas das ordenadas
    
    d = sqrt(somatorio); // Calcula a raiz da soma dos quadrados das diferencas
    
    return d; // Retorna o valor calculado
    // O tipo do valor retornado deve ser compativel com o tipo de retorno
}
