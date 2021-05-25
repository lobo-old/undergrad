#include "function.h";

void initpile( pile *p ){
   (*p).sommet = -1;
}

int estvide( pile *p ) {

    if( (*p).sommet == -1) {
        return 1;
   } else {
    return 0;
   }
}

int estpleine( pile *p ) {
    if ((*p).sommet == tail-1){
            return 1 ;

    }else {
        return 0;
    }
}

void empiler( pile *p, float v ){
    if(!estpleine(p)){
        (*p).sommet++;
        p->pile[(*p).sommet] = v;

    }else{
        printf("pile pleine\n");
    }
}

float depiler( pile *p ){
    float v = (*p).pile[(*p).sommet];
    if(!estvide(p)){
        p->pile[(*p).sommet] = 0;
        (*p).sommet--;
    }else{
        printf("pile vide\n");
    }
    return v;
}
void afficher( pile *p ){
    if(!estvide(p)){
            int i;
            for(i=0;i<=(*p).sommet;i++){
                printf("%d: %f\n",i,(*p).pile[i]);
            }
    }else{
        printf("pile vide\n");
    }
}
