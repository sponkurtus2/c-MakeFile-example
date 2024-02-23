#include "functions.h"
#include <stdio.h>

void sayName() {
  char name[30];
  printf("What is your name?\n");
  scanf("%s", name);
  printf("Hello %s", say_name(name));
}
