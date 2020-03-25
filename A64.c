#include<stdio.h> 
#include<stdlib.h>
#include<stdint.h>

#define  ALLOWED_ARCH_TYPE  0x040

int main () {

    uint8_t arch_base = sizeof(void*)  *  8u ;  

    if ( arch_base !=  ALLOWED_ARCH_TYPE )  {
        fprintf(stderr ,"not allowed to run on %d \n" , arch_base) ; 
        exit(EXIT_FAILURE); 
    }else 
        fprintf(stdout ,"systeme arch supported : %d \n" , arch_base) ; 
    return EXIT_SUCCESS ; 
}
