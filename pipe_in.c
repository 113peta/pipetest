#include <stdio.h>

int main(void) {
    int x, y, z;

    while (1) {
        scanf("%d,%d,%d", &x, &y, &z);
        printf("t = [%d, %d, %d]\n", x, y, z);
        if (x==0 && y==0 && z==0) {
            break;
        }
    }

    return 0;
}