#include<stdio.h> 
#include<stdlib.h>
#include<stdint.h>

#define  BASE_BITES   0X8U
#define  CURRENT_SYSTEM_BITES sizeof(void*)
#define  ARCH_TYPE  (BASE_BITES * CURRENT_SYSTEM_BITES) 
#define  ALLOWED_ARCH_TYPE  0x040

int main () {

    uint8_t arch_base = ARCH_TYPE ;  
    if ( arch_base !=  ALLOWED_ARCH_TYPE )  {
        fprintf(stderr ,"not allowed to run on %d \n" , CURRENT_SYSTEM_BITES) ; 
        exit(EXIT_FAILURE); 
    }else {
        fprintf(stdout ,"systeme arch supported : %d \n" , arch_base) ; 
    }
    return EXIT_SUCCESS ; 
}
