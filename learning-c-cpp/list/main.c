#include<stdio.h>
#include<stdlib.h>
#include "sliste.h"

int main(){
    sliste_t *l1;
    l1 = (sliste_t*)malloc(sizeof(sliste_t));
    printf("%d",est_vide(l1));
}
