/*
 * INF 100
 * Programa relativo a pratica 10 do semestre letivo de 2012/II
 * Programa que le um texto digitado pelo usuario, armazena o mesmo
em um arranjo de caracteres e, em seguida faz 2 operacoes:
 * 1) Exibe o texto em tela de tras para a frente
 * 2) Substitui todas as ocorrencias de um determinado caractere
definido pelo usuario por outro caractere, tambem definido pelo
usuario
 */

/*
 * Nome: Marina Hassen de Souza
 * Matricula: 75230
 * Curso: Engenharia Elétrica
 * Data: 05/03/2013
 */
#include <iostream>

using namespace std;

int main() {
  const int MAX_TEXTO = 256; // Constante para determinar o tamanho maximo do texto informado pelo usuario
  char texto[MAX_TEXTO]; // Arranjo para conter texto de ate 256 caracteres
  int tam_texto; // Variavel para armazenar o numero de caracteres informados pelo usuario

  // Le o texto de entrada (parando quando o usuario digitar um ponto final
  cout << "Informe seu texto: ";
  tam_texto = 0;
  char c; // Variavel auxiliar para a leitura do texto
  do {
    cin.get(c); // Obtem caractere digitado pelo usuario
    if (c != '\n') { // Se o caractere digitado for diferente da quebra de linha (enter), acrescenta no arranjo
      texto[tam_texto] = c;
      tam_texto++; // Incrementa contador
    }
  } while (c != '\n' && tam_texto < (MAX_TEXTO-1)); // Continua leitura ate que o enter seja digitado ou que o limite maximo de tamanho do arranjo seja atingido
  texto[tam_texto+1] = '\0'; // Passo necessario para que o cout a seguir funcione corretamente

  // Exibe o conteudo digitado e o contador de caracteres na tela
  cout << "Texto digitado: ";
  for (int i = 0; i < tam_texto; i++) {
    cout << texto[i];
  }
  cout << " (" << tam_texto << " caracteres lidos)" << endl;


  cout << "Texto invertido ";
        for (int i = (tam_texto -1); i >= 0; i--)
        {
        cout << texto [i];
        }
        cout << endl;

        char saida, entrada;
        int cont_subs = 0;
        cout << "Informe o caractere a ser substituido: "; // Substituindo o caractere a ser informado
        cin >> saida;
        cout << "Informe o caractere substituto: "; // Substituindo o caractere a ser informado
        cin >> entrada;
        cout << "Texto substituido: ";

        for (int i=0; i< tam_texto; i++)
        {
                if (texto[i] == saida)
                {
                        texto [i] = entrada;
                        cont_subs ++;
                  }
                cout << texto [i];
        }
        cout << "( " << cont_subs << " substituições feitas) " ;
        cout << endl;

        system("pause>null");
  return 0;
}
