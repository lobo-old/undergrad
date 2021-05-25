///////////////////////////////////////////////////////////////////////////////
// INF 100 - 2012/2
// Exercicios de revisao
//
// Descricao:
//    Um sacolao anotou os dados referentes a vende de tomates em cada dia da
//       ultima semana. Foram anotados os precos de venda do Kg de tomate (em
//       cada dia), e a quantidade em Kg vendida (em cada dia)
//
//    Exemplo: Preço em cada dia:       7.00 7.10 7.50 8.00 8.50 8.98 9.00
//             Kg vendidos em cada dia:  100  100   95   88   80   77   70
//
//    Ler esses dados e informar:
//    - Total de Kg vendidos na semana
//    - Valor total arrecadado com as vendas da seman
//    - Qual o maior valor arrecadado em um único dia
//
// Autor: Andre Gustavo dos Santos
// Data:  12/04/2013
///////////////////////////////////////////////////////////////////////////////


#include <iostream>
using namespace std;

int main()
{
    float preco[7]; //preco do Kg em cada dia
    int quant[7];   //quantidade de Kg vendiso em cada dia
    
    int i;
    
    cout << "Digite os precos nos 7 dias: ";
    for(i=0;i<7;i++)
        cin >> preco[i];

    cout << "Digite a quantidade de Kgs vendidos em cada dia: ";
    for(i=0;i<7;i++)
        cin >> quant[i];
    
    //Calcula o total de Kg vendidos na semana
    int totalKg = 0;
    for(i=0;i<7;i++)
        totalKg = totalKg + quant[i];
    cout << "Total de Kg vendidos: " << totalKg << endl;
    
    //Calcula o valor total arrecadado com as vendas
    float total = 0;
    for(i=0;i<7;i++)
        total = total + quant[i]*preco[i];
    cout << "Total arrecadado: " << total << endl;
    
    //Calcula o valor arrecadado em cada dia
    float totalnodia[i];
    for(i=0;i<7;i++)
        totalnodia[i] = quant[i]*preco[i];
    
    //Encontra o maior desses valores
    float maior = 0;
    for(i=0;i<7;i++)
        if (totalnodia[i] > maior)
            maior = totalnodia[i];
    cout << "Maior valor arrecadado num so dia: " << maior << endl;

    return 0;
}
    
