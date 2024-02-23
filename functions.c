#include "functions.h"

const char *get_message() { return "Hello world\n"; }

const char *say_name(char name[]) { return ("Hello %s \n", name); }
