///////////////////////////////////////////////////////////////////////////////
// INF 100 - 2012/2
// Exercicios de revisao
//
// Descricao:
//    - Le as notas e frequencia nas 6 disciplinas cursadas
//    - Lista as notas (ou conceito L se reprovado por falta)
//    - Informa o numero de aprovacoes
//    - Informa a media nas disciplinas, e a media nas aprovadas
//
// Autor: Andre Gustavo dos Santos
// Data:  12/04/2013
///////////////////////////////////////////////////////////////////////////////


#include <iostream>
using namespace std;

int main()
{
    int nota[6];   //notas nas 6 disciplinas
    int freq[6];    //frequencia nas 6 disciplinas
    
    int i;
    
    cout << "Digite as notas nas 6 disciplinas: ";
    for(i=0;i<6;i++)
        cin >> nota[i];

    cout << "Digite as frequencias nas 6 disciplinas: ";
    for(i=0;i<6;i++)
        cin >> freq[i];
    
    
    //Impressao do resultado final
    for(i=0;i<6;i++) {
        if (freq[i]<75)
            cout << "Nota final na disciplina " << i+1 << " L" << endl;    //conceito L, reprovacao por falta
        else
            cout << "Nota final na disciplina " << i+1 << ": " << nota[i] << endl;
    }

    //Calculo do numero de aprovacoes
    int aprov = 0;
    for(i=0;i<6;i++)
        if (nota[i]>=60 && freq[i]>=75)
            aprov++;
    cout << "Aprovado em " << aprov << " disciplinas." << endl;

    //Calculo da media
    int total = 0;
    for(i=0;i<6;i++)
        total = total + nota[i];
    cout << "Media nas disciplinas: " << total/6 << endl;

    
    //Calculo da media nas aprovadas
    int totalaprov = 0;
    for(i=0;i<6;i++)
        if (nota[i]>=60 && freq[i]>=75)
            totalaprov = totalaprov + nota[i];
    cout << "Media nas aprovadas: " << totalaprov/aprov << endl;
    
    return 0;
}
    
