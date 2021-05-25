#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <pthread.h>
#include <windows.h>

void* threadDisplay (void* arg);
void* threadCompteur (void* arg);
int compteur = 0, nombre = 0;
pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
//pthread_cond_t cond = PTHREAD_COND_INITIALIZER;

//pthread_cond_signal(&cond);
//pthread_cond_wait(&cond,&mutex);

int main ()
{

	pthread_t monThreadCompteur;
	pthread_t monThreadDisplay;
	// Création des threads
	pthread_create (&monThreadCompteur, NULL, threadCompteur, (void*)NULL);
	pthread_create (&monThreadDisplay, NULL, threadDisplay, (void*)NULL);

	// Attente de la fin des threads
	pthread_join (monThreadCompteur, NULL);
	pthread_join (monThreadDisplay, NULL);

	return 0;
}

void* threadCompteur (void* arg)
{

	srand(time(NULL));

	while(1) // Boucle infinie
	{
		// On tire un nombre entre 0 et 10
		nombre = rand()%10;
		// On ajoute ce nombre à la variable compteur

		pthread_mutex_lock(&mutex);
		compteur += nombre;

		printf("%d\n", compteur);

        pthread_mutex_unlock(&mutex);
		Sleep (1000); // On laisse 1 seconde de repos
	}

	pthread_exit(NULL); // Fin du thread
}


void* threadDisplay (void* arg)
{
	while(1) // Boucle infinie
	{
        pthread_mutex_lock(&mutex);
		printf("la valeur du compteur est : %d\n", compteur);
        pthread_mutex_unlock(&mutex);
        Sleep (1000); // On laisse 1 seconde de repos
	}

	pthread_exit(NULL); // Fin du thread
}


