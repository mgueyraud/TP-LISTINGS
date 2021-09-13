#include <pthread.h>
#include <stdio.h>
#include <string.h>
/* An array of balances in accounts, indexed by account number. */
float account_balances[3];
/* Transfer DOLLARS from account FROM_ACCT to account TO_ACCT. Return 
 0 if the transaction succeeded, or 1 if the balance FROM_ACCT is 
 too small. */
int process_transaction(int from_acct, int to_acct, float dollars)
{
    int old_cancel_state;
    /* Check the balance in FROM_ACCT. */
    if (account_balances[from_acct] < dollars)
        return 1;
    /* Begin critical section. */
    pthread_setcancelstate(PTHREAD_CANCEL_DISABLE, &old_cancel_state);
    /* Move the money. */
    account_balances[to_acct] += dollars;
    account_balances[from_acct] -= dollars;
    /* End critical section. */
    pthread_setcancelstate(old_cancel_state, NULL);
    return 0;
}

int main()
{
    account_balances[1] = 1000000;
    account_balances[2] = 2289324;
    int t = process_transaction(1, 2, 100000);
    if (t == 0)
    {
        printf("La transferencia se realizo con exito\n");
    }
    else
    {
        printf("Ups ! Hubo un error\n");
    }
}