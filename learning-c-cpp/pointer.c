#include <stdio.h>
#include <stdlib.h>

int main( int argc , char *argv [ ] )
{

    int *p1=NULL ,*p2=NULL;
    //printf("p1 %X   p2  %X \n",p1,p2);
    p1 = ( int *) malloc(sizeof( int ) ) ;

    if(p1 != NULL){
        *p1 = 2 ;
        p2 = p1 ;
        p1++;

        printf("Adresse de pointeur p1 est %X et sa valeur est %d\n", p1 ,*p1 );
        printf("Adresse de pointeur p2 est %X et sa valeur est %d\n", p2 ,*p2 );
        free(p1) ;
        printf("Adresse de pointeur p2 est %X et sa valeur est %d\n", p2 ,*p2 );

    }

    return 0;
}
