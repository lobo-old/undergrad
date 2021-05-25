#include <stdio.h>
#include <stdlib.h>
#include "function.h"

int main()
{
    pile p;
    initpile(&p);

    /*
    empiler(&p,2.5);
    afficher(&p);
    printf("\n%f\n",depiler(&p));
    */
    /*
    printf("%d\n",estvide(&p));
    printf("%d\n",estpleine(&p));
    empiler(&p,5);
    empiler(&p,6);
    empiler(&p,7);
    afficher(&p);
    depiler(&p);
    afficher(&p);
    depiler(&p);
    depiler(&p);
    afficher(&p);
    */
    int i;
    for(i=0;i<tail;i++){
        empiler(&p,i);
    }
    afficher(&p);
    return 0;
}

