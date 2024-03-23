#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <sched.h>
#define _GNU_SOURCE

#include <sys/syscall.h>

#ifndef SYS_gettid
#error "SYS_gettid unavailable on this system"
#endif

#define gettid() ((pid_t)syscall(SYS_gettid))

// Define the mutex as global variable
pthread_mutex_t lock;
pthread_mutexattr_t attributes;

// Define a long loop to slow down the thread
const long int LOOP_LARGE_NUMBER = 500000000;
const long int LOOP_10PERCENT_NUMBER = LOOP_LARGE_NUMBER / 10;

// Define the scheduling policy
int policy = SCHED_FIFO;

int get_real_time_priority() {
    char str[50];
    sprintf(str, "/proc/%d/stat", gettid());
    FILE *fp = fopen(str, "r");
    for(int i = 0; i < 17; i++) {
        fscanf(fp, "%s", str);
    }
    int rt_priority = 0;
    fscanf(fp, "%d", &rt_priority);
    fclose(fp);
    return -rt_priority-1;
}

void *function1()
{
	printf("Thread 1 start\n");
	fflush(stdout);

    printf("Thread 1 requests the lock\n");
	fflush(stdout);

	pthread_mutex_lock(&lock);
	
    printf("Thread 1 had the lock \n");
	fflush(stdout);

    int counter = 0;
	for(int i = 0; i < LOOP_LARGE_NUMBER; i++)
	{
		//int a = 4*4;
        if ((i > 0) && (i % LOOP_10PERCENT_NUMBER == 0)) {
            counter += 1;
            printf("Thread 1 running, priority %d, process %d0%%...\n", get_real_time_priority(), counter);
            fflush(stdout);
        }
	}

	printf("Thread 1 released the lock\n");
	fflush(stdout);
    
	pthread_mutex_unlock(&lock);

	printf("Thread 1 complete\n");
	fflush(stdout);
}

int main()
{
	//Create mutex and initialize it.

	pthread_mutexattr_setprotocol(&attributes,PTHREAD_PRIO_INHERIT);
	pthread_mutex_init(&lock,&attributes);
	
    //Change the priority of main thread to highest
    //Priority is a number within 1 ~ 99. Larger number means higher priority
    struct sched_param param_main = { 0 };
    int priority_mainthread = 99; // Highest priority
    param_main.sched_priority = priority_mainthread;
    pthread_setschedparam(pthread_self(), policy, &param_main);
    printf("Priority of main thread: %d\n", get_real_time_priority());

	//Initiate thread 1
    int priority1 = 10; //define your own priority
    pthread_t thread1 = { 0 }; 
    struct sched_param param1 = { 0 };
	param1.sched_priority = priority1;
    pthread_attr_t attr1;
    pthread_attr_init(&attr1);
    pthread_attr_setinheritsched(&attr1, PTHREAD_EXPLICIT_SCHED);
    pthread_attr_setschedpolicy(&attr1, policy);
    pthread_attr_setschedparam(&attr1, &param1);


	sleep(1);
    //Create thread 1
	printf("Creating thread1...\n");
    fflush(stdout);
	pthread_create(&thread1, &attr1, function1, NULL);
    sleep(1);
    
    //Waiting for thread to complete
	pthread_join(thread1,NULL);

	return 0;
}
