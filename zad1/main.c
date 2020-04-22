#include <stdio.h>
#include <stdlib.h>

extern const double PI;
extern const int myConstant1;
extern const int myConstant2;

int main(){
    int a, b;
    a = myConstant1;
    b = myConstant2;

    int resultAdd = addition(a, b);
    int resultMulti = multiplication(a, b);
    int resultSub = substraction(a, b);


    printf("%d\t%d\t%d\n PI = %f...\n", resultAdd, resultMulti, resultSub, PI);
    return 0;
}