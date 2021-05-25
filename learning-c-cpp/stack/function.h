#define tail 10

typedef struct{
        float pile[tail];
        int sommet;

}pile;

void initpile( pile *p );
int estvide( pile *p ) ;
int estpleine( pile *p ) ;
void empiler( pile *p, float v ) ;
float depiler( pile *p ) ;
void afficher( pile *p ) ;
