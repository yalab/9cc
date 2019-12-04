#include <stdio.h>
#include <string.h>

void consume(char *op) {
	printf("%s\n", op);
}

int main() {
	consume("+");
	printf("%i\n", (int)strlen("1"));
	return 0;
}
