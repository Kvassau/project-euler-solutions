#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char *argv[])
{
    int tri_num = 0, nat_num = 0, divisors, i; 

    if (argc < 2) {
	    puts("Usage: 12 <number>");
	    return EXIT_FAILURE;
    }

    int max = strtoll(argv[1], NULL, 10);

    if (!max) {
        fprintf(stderr, "ERROR: %s is not a valid number\n", argv[1]);
        return EXIT_FAILURE;
    }

    while(1) {
        nat_num++;
        tri_num += nat_num;
        divisors = 0;

        for (i = 1; i < (int)floor(sqrt(tri_num)); i++) 
            if (tri_num % i == 0) divisors += 2;
        
        if (divisors > max) break;
    }

    printf("First number with >%d divisors: %d, divisors: %d\n", max, tri_num, divisors);

    return EXIT_SUCCESS;
}
