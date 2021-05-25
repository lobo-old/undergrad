#include <stdio.h>
#include <stdlib.h>

typedef struct element{
    int valeur;
    struct element *suivant;
}element;

void newelement(element *elt,int v){
    elt = (element *) malloc(sizeof( element *) ) ;
    (elt) -> valeur = v ;
    (elt) -> suivant = NULL;
}

int main()
{
    element *elt;
    newelement(elt,5);
    printf("Valeur: %d\n",elt->valeur);
    return 0;
}
