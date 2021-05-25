///////////////////////////////////////////////////////////////////////////////
// INF 100 - 2012/2
// Exercicios de revisao
//
// Descricao:
//    Em certo jogo, os jogadores recebem peças com letras e devem formar
//    palavras com essas letras. Na palavra formada, cada vogal vale 1 pt,
//    e cada consoante 3 pts. Também pode ser usado um '-' como curinga,
//    mas ele não vale ponto. A palavra pode ter no maximo um curinga.
//     
//    Lar uma palavra, terminada com '.', e imprimir seu valor no jogo.
//
// Autor: Andre Gustavo dos Santos
// Data:  12/04/2013
///////////////////////////////////////////////////////////////////////////////


#include <iostream>
using namespace std;

int main()
{
    char palavra[30];   //array de char para armazenar a palavra
    int pontos;         //total de pontos
    int curinga;        //total de curingas
    
    cout << "Digite a palavra: ";
    cin >> palavra;
    
    pontos = 0;
    curinga = 0;

    for(int i=0;i<30;i++) {
        if (palavra[i]=='.')        //Flag de fim
            break;
        else if (palavra[i]=='a' || palavra[i]=='e' || palavra[i]=='i' || palavra[i]=='o' || palavra[i]=='u')
            pontos++;
        else if (palavra[i]=='-')   //Curinga
            curinga++;
        else
            pontos = pontos + 3;
    }

    if (curinga>1)
        cout << "Palavra invalida" << endl;
    else
        cout << "Total de pontos: " << pontos << endl;    
    
    return 0;
}
// Exemplos
//
// ufv.
// Total de pontos: 7
//
// uni-ersidade.
// Total de pontos: 21
//
// uni-er-idade.
// Palavra invalida
//
// Note que o programa considera '.' como fim da palavra.
// Se ele nao for digitado, serao contabilizados pontos para os caracteres lixo...
//
// Como curiosidade, outra forma seria usar o flag '\0'
//
// if (palavra[i]=='\0')        //Flag de fim de string
//     break;
//
// O flag '\0' ja e' flag de string, inserido automaticamente pelo cin
// E' por causa dele que um cout<<palavra escreve apenas os caracteres lidos
// e nao o lixo que existe ate nas outras posicoes ate a 30ª


// Nesse caso, bastaria digitar a palavra e dar enter, 
