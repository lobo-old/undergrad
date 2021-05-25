///////////////////////////////////////////////////////////////////////////////
// INF 100 - 2012/2
// Exercicios de revisao
//
// Descricao:
//    Ler um array de inteiros e ordenar seus itens em ordem crescente
//
// Autor: Andre Gustavo dos Santos
// Data:  12/04/2013
///////////////////////////////////////////////////////////////////////////////


#include <iostream>
using namespace std;

//Escreve na tela os t primeiros valores do vetor x
void escreve(int x[], int t)
{
    for(int i=0;i<t;i++)
        cout << x[i] << " ";
    cout << endl;
}

//METODO BOLHA
//Coloca os t primeiros valores de x em ordem crescente
void ordena(int x[], int t)
{
    int passo,i;  //contadores
    int aux;      //auxiliar para troca

    for(passo=0;passo<t;passo++) {  //Passa pelo array t vezes
//        cout << "Passo " << passo << endl;
        for(i=0;i<t-1;i++)  {        //Para cada item i (de 0 a t-1)
            if (x[i] > x[i+1]) {    //  se o item i é maior que o item seguinte
                aux = x[i];         //  troca os dois de lugar
                x[i] = x[i+1];
                x[i+1] = aux;
            }
//            escreve(x,t); //Descomente essa linha e a do cout acima para ver a ordenacao passo a passo
        }
    }
}

int main()
{
    int vetor[1000];    //vetor de inteiros
    int n;              //quantidade de valores
    
    //Leitura dos dados
    cout << "Quantos valores? ";
    cin >> n;
    
    cout << "Digite os " << n << " valores: ";
    for(int i=0;i<n;i++)
        cin >> vetor[i];
    
    ordena(vetor, n);
    escreve(vetor,n);
    
    return 0;
}
// Observacoes:
//  1.Note que a funcao main tem variaveis vetor e n,
//       e as funcoes escreve e ordena tem outras variaveis.
//    Mas vetor e' passado como parametro para ordena, que e' "ligado" a x, 
//       ja que passagens de vetor sao sempre por referencia
//    E o valor de n é passado para ordena, sendo recebido na variavel t
//    Desta forma a funcao "ordena" sabe quantos itens foram lidos, e quando
//       os valores sao trocados em x, na verdade sao trocados em vetor da main
//
//  2.O metodo foi feito com t passos, mas na verdade sao necessarios apenas t-1.
//    A cada passo, o maior valor vai parar na posicao correta
//    Apos t-1 passos, t-1 valores foram para a posicao correta
//    O unico restante acaba ficando na posicao certa, a primeira
//
//  3.Descomente as duas linhas comentadas da funcao ordena para ver o metodo
//        ordenando o array passo a passo
    
