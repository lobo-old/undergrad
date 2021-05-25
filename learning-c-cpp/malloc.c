#include <stdio.h>
#include <stdlib.h>

int main()
{
    int *p1, *p2;

    p1 = (int*)malloc(sizeof(int));
    *p1 = 2;
    p2 = p1;
    //p2 = (short*)malloc(sizeof(short));
    printf("int: %d   address: %x\n",*p1,p1);
    printf("int: %d   address: %x\n",*p2,p2);
    free(p1);
    printf("int: %d   address: %x\n",*p1,p1);
    printf("int: %d   address: %x\n",*p2,p2);

    int *d1, *d2;
    d1 = (int*)malloc(sizeof(int));
    *d1 = 13;
    printf("int: %d   address: %x\n",*d1,d1);
    return 0;
}
