#include<stdio.h>
#include<stdlib.h>
typedef struct {
    int a ;
    double b ;
    struct MaStructure* suivant;
} MaStructure ;

int main(){
    MaStructure *ptr1 = NULL;
    MaStructure* ptr2 = NULL;

    ptr1 = ( MaStructure *) malloc ( sizeof( MaStructure ) );
    if ( ptr1 != NULL){
        ptr1->a = 10;
        ptr1->b = 3.1415 ;
        ptr1->suivant = NULL;
    }
    printf("%d %f %x\n",(*ptr1).a,(*ptr1).b,(*ptr1).suivant);

    ptr1->suivant = (MaStructure*)malloc(sizeof(MaStructure));
    printf("%d %f %x\n",(*ptr1).a,(*ptr1).b,(*ptr1).suivant);

    (*ptr1.suivant)->a = 40;
    printf("%d %f %x\n",(*((*ptr1).suivant)).a,(*ptr1).b,(*ptr1).suivant);
}
