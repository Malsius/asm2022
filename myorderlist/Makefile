all: myorderlist

mybyte: myorderlist.S
	nasm -f elf64 myorderlist.S
	gcc -no-pie myorderlist.o myorderlist.c -o myorderlist

clean:
	$(RM) *.o myorderlist