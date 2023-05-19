#include <stdlib.h>
#include <stdio.h>

int main() {
  int n;
  printf("Vvedite n: \n");
  scanf("%d", &n);
  if (n>0)
    exit(1);
  if (n<0)
    exit(2);
  if (n==0)
    exit(0);
  return 0;
}
