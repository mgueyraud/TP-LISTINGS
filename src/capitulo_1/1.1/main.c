#include <stdio.h>
#include <stdlib.h>
#include "../1.3/reciprocal.hpp"
int main(int argc, char **argv)
{
    int i = atoi(argv[1]);
    printf("The reciprocal of %d is %g\n", i, reciprocal(i));
    return 0;
}