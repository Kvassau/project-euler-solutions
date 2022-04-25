#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    long long num = 0;
    int max_prime = 0, largest_prime = 3;

    if (argc < 2) {
	    puts("Usage: 3 <number>");
	    return EXIT_FAILURE;
    }

    num = strtoll(argv[1], NULL, 10);

    if (!num) {
        fprintf(stderr, "ERROR: %s is not a valid number\n", argv[1]);
        return EXIT_FAILURE;
    }

    printf("Largest prime of %lld: ", num);

    if (num % 2 == 0) max_prime = 2;

    while (num % 2 == 0) num /= 2;

    while (num > 1) {
        while (num % largest_prime == 0) {
            max_prime = largest_prime;
            num /= largest_prime;
        }
        largest_prime += 2;
    }

    printf("%d\n", max_prime);

    return EXIT_SUCCESS;
}
