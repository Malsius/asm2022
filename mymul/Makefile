all: mymul

mybyte: mymul.S
	nasm -f elf64 mymul.S
	gcc -no-pie mymul.o mymul.c -o mymul

clean:
	$(RM) *.o mymul