#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main (void) {
    int fd;
    fd = open("toto", O_RDWR); /* doit exister */
    while (1) {
        if (lockf(fd, F_TLOCK, 0) == 0) {
            printf("%d: verrouille le fichier\n",
            getpid());
            sleep(5);
        if (lockf(fd, F_ULOCK, 0) == 0)
            printf("%d: deverrouille le fichier\n",
            getpid());
        return;
        } else {
            printf("%d: deja verrouille...\n",
            getpid());
            sleep (2);
        }
    }
}
