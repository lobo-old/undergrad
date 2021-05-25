#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    int i;
    printf("Name of file: %s\n",argv[0]);
    printf("N argumentos: %d\n\n",argc);
    for(i=1;i<argc;i++){
        printf("Argumento %d: %s\n",i,argv[i]);
    }

    system("pause");
    return EXIT_SUCCESS;
}
