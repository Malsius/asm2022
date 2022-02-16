#include <stdio.h>

long long myitoa(char *s);

int main() {

    printf("myitoa(\"5\")=%lli\n", myitoa("5")); // 5
    printf("myitoa(\"-5\")=%lli\n", myitoa("-5")); // -5
    printf("myitoa(\"-18\")=%lli\n", myitoa("-18")); // -18
    printf("myitoa(\"-1234567\")=%lli\n", myitoa("-1234567")); // -1234567
}


