CFLAGS = -Wno-implicit-function-declaration

all: final

final: main.o hello.o sayName.o functions.o
	echo "Linking maind and hello file"
	gcc $(CFLAGS) main.o hello.o sayName.o functions.o -o final
	chmod +x final

main.o: main.c
	echo "Compiling the main file"
	gcc $(CFLAGS) -c main.c

hello.o: hello.c
	echo "Compiling the hello file"
	gcc $(CFLAGS) -c hello.c

sayName.o: sayName.c
	echo "Compiling sayName file"
	gcc $(CFLAGS) -c sayName.c

functions.o: functions.c
	echo "Compiling functions"
	gcc $(CFLAGS) -c functions.c

clean:
	echo "Removing everything but the source files"
	rm main.o hello.o sayName.o functions.o final
