#include<stdio.h>
#include<stdlib.h>

typedef struct sliste{
    unsigned int n ;
    struct sliste* suivant;
} sliste_t ;

int est_vide(sliste_t *l);

sliste_t* liste_vide(void);

sliste_t* ajouter(unsigned int n,sliste_t *l);

sliste_t* enlever_tete(sliste_t *l);

void libere_liste(sliste_t *l);

sliste_t* enlever_element(unsigned int e,sliste_t *l);
