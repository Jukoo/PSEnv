#!/usr/bin/make 

CC       = gcc 
CFLAGS   = -v -Wextra -ansi  -pedantic -O2 
EXEC 	 =  arch
SRC      =  a_64.c 

$(EXEC):$(SRC)
	$(CC) -o $@  $^  $(CFLAGS)
