#include <stdio.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/sem.h>
/* We must define union semun ourselves. */
#define clave 230598
union semun {
	int val;
	struct semid_ds *buf;
	unsigned short int *array;
	struct seminfo *__buf;
};
/* Initialize a binary semaphore with a value of 1. */
int binary_semaphore_initialize (int semid){
	union semun argument;
	unsigned short values[1];
	values[0] = 1;
	argument.array = values;
	return semctl (semid, 0, SETALL, argument);
}

int main(){
    int SEMID = semget(clave, 1, 01666 | IPC_CREAT);
    int sem = binary_semaphore_initialize(SEMID);
	if(sem>=0)
		printf("El semaforo binario se ha inicializado correctamente: %d\n",clave);
	else
		printf("Fallo al inicializar el semaforo.\n");
	return 0;
}
