#!/usr/bin/make 

CC       =  gcc 
CFLAGS   =  -v -Wextra -ansi  -pedantic -O2 
EXEC 	 =  arch_x64
SRC      =  $(wildcard  *.c)  


$(EXEC):$(SRC)
	$(CC) -o $@  $^  $(CFLAGS)

mproper : 
	rm $(EXEC)
