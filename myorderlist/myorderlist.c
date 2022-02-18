#include <stdio.h>

void orderlist(long long *list, int size);

long long li[] = {0x10, 0x0, 0x8, 0x10, 0xFFFFFFFF};

int main() {
    
    orderlist(li, 5);
    // print: "3, 8, 16\n"

    return 0;
}





