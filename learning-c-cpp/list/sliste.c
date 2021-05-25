#include<stdio.h>
#include<stdlib.h>
#include "sliste.h"

//se a lista está vazia
int est_vide(sliste_t *l){
    if(l->suivant == NULL){
        return 1;
    }else return 0;
}

//envia o valor do ponteiro que representa a lista vazia
sliste_t* liste_vide(void){
    return NULL;
}

sliste_t* ajouter(unsigned int nombre,sliste_t *l){
    sliste_t *nouvelleListe = malloc(sizeof(sliste_t));
    nouvelleListe->n = nombre;
    nouvelleListe->suivant = l;
    return nouvelleListe;
}

sliste_t* enlever_tete(sliste_t *l){

}

void libere_liste(sliste_t *l){

}

sliste_t* enlever_element(unsigned int e,sliste_t *l){

}
