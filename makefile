#!/usr/bin/make 

CC       = gcc 
v_mod    = -v 
warn     = -Wall 
warn_ext = -Wallextra  
exec     = arch


arch_type : a_64.c 
	$(CC) -o $(exec)  a_64.c $(v_mod)  $(warn) 
