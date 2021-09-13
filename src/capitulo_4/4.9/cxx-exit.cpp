#include <pthread.h>
#include <stdio.h>
#include <unistd.h>

class ThreadExitException
{
public:
    /* Create an exception-signaling thread exit with RETURN_VALUE. */
    ThreadExitException(void *return_value)
        : thread_return_value_(return_value)
    {
    }
    /* Actually exit the thread, using the return value provided in the 
 constructor. */
    void *DoThreadExit()
    {
        pthread_exit(thread_return_value_);
    }

private:
    /* The return value that will be used when exiting the thread. 
*/
    void *thread_return_value_;
};

int should_exit_thread_immediately()
{
    sleep(1);
    return (1);
}
void do_some_work()
{
    while (1)
    {
        /* Do some useful things here... */
        if (should_exit_thread_immediately())
            throw ThreadExitException(/* thread's return value = */ NULL);
    }
}
void *thread_function(void *)
{
    try
    {
        do_some_work();
    }
    catch (ThreadExitException ex)
    {
        /* Some function indicated that we should exit the thread. */
        ex.DoThreadExit();
    }
    return NULL;
}

int main()
{

    thread_function(NULL);

    return 0;
}