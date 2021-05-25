#include <sys/types.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <termios.h>
#include <pthread.h>

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t cond = PTHREAD_COND_INITIALIZER;

char *portname = "/dev/ttyACM0";
char buf [100];
int n;
int fd;

//global
float values[3];

int
set_interface_attribs (int fd, int speed, int parity)
{
        struct termios tty;
        memset (&tty, 0, sizeof(tty));
        if (tcgetattr (fd, &tty) != 0)
        {
                printf("error %d from tcgetattr", errno);
                return -1;
        }

        cfsetospeed (&tty, speed);
        cfsetispeed (&tty, speed);

        tty.c_cflag = (tty.c_cflag & ~CSIZE) | CS8;     // 8-bit chars
        // disable IGNBRK for mismatched speed tests; otherwise receive break
        // as \000 chars
        tty.c_iflag &= ~IGNBRK;         // disable break processing
        tty.c_lflag = 0;                // no signaling chars, no echo,
                                        // no canonical processing
        tty.c_oflag = 0;                // no remapping, no delays
        tty.c_cc[VMIN]  = 0;            // read doesn't block
        tty.c_cc[VTIME] = 5;            // 0.5 seconds read timeout

        tty.c_iflag &= ~(IXON | IXOFF | IXANY); // shut off xon/xoff ctrl

        tty.c_cflag |= (CLOCAL | CREAD);// ignore modem controls,
                                        // enable reading
        tty.c_cflag &= ~(PARENB | PARODD);      // shut off parity
        tty.c_cflag |= parity;
        tty.c_cflag &= ~CSTOPB;
        tty.c_cflag &= ~CRTSCTS;

        if (tcsetattr (fd, TCSANOW, &tty) != 0)
        {
                printf ("error %d from tcsetattr", errno);
                return -1;
        }
        return 0;
}

void
set_blocking (int fd, int should_block)
{
        struct termios tty;
        memset (&tty, 0, sizeof tty);
        if (tcgetattr (fd, &tty) != 0)
        {
                printf ("error %d from tggetattr", errno);
                return;
        }

        tty.c_cc[VMIN]  = should_block ? 1 : 0;
        tty.c_cc[VTIME] = 5;            // 0.5 seconds read timeout

        if (tcsetattr (fd, TCSANOW, &tty) != 0)
                printf ("error %d setting term attributes", errno);
}

void split(char *ch, float values[]) {
    char *pch;
    int i=0;
    pch = strtok (ch, " ");
    while (pch != NULL) {
        values[i] = strtof(pch,NULL);
        i++;
        pch = strtok(NULL, " ");
    }

}

void* fThreadAcquisition(void* arg){
    fd = open (portname, O_RDWR | O_NOCTTY | O_SYNC);
    if (fd < 0)
    {
        printf ("error %d opening %s: %s", errno, portname, strerror (errno));
        pthread_exit(NULL);
    }

    set_interface_attribs (fd, B9600, 0);  // set speed to 115,200 bps, 8n1 (no parity)
    set_blocking (fd, 0);                // set no blocking
    while ((n = read(fd, buf, sizeof buf)) > 0) {

        //printf("%s\n",buf);
        pthread_mutex_lock(&mutex);
        split(buf,values);
        pthread_mutex_unlock(&mutex);
        memset(buf,0,sizeof(buf));
        printf("%f %f %f\n", values[0],values[1], values[2]);
        sleep(1);
    }
}

void* fThreadCalcule(void* arg){
    float Volume =0;
    while(1){
        //pthread_mutex_lock(&mutex);
        Volume = (values[1]*8.3144621*values[0])/values[2];
        //pthread_mutex_unlock(&mutex);
        printf("%f\n",Volume);
        sleep(1);
        if(Volume < -5000 ){
            pthread_cond_signal(&cond);
        }
    }
}

void* fThreadAffichage(void* arg){

    while(1){
        //pthread_mutex_lock(&mutex);
        pthread_cond_wait(&cond,&mutex);
        printf("Le valeur est depasse\n");
        sleep(1);
        //pthread_mutex_unlock(&mutex);
    }
}


int main() {
    //Threads
    pthread_t ThreadAcquisition;
	pthread_t ThreadCalcule;
	pthread_t ThreadAffichage;


    pthread_create (&ThreadAcquisition, NULL, fThreadAcquisition, (void*)NULL);
	pthread_create (&ThreadCalcule, NULL, fThreadCalcule, (void*)NULL);
    pthread_create (&ThreadAffichage, NULL, fThreadAffichage, (void*)NULL);

    pthread_join (ThreadAcquisition, NULL);
	pthread_join (ThreadCalcule, NULL);
    pthread_join (ThreadAffichage, NULL);




}
