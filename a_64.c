#include<stdio.h> 
#define  BASE_REF  0X8U 
#define  A_BASE_REF  (BASE_REF * BASE_REF)
#define  E_NO_ALLOW 12 
#define  A_ALLOW 0
int H_arch(int*) ; 

int main () {

    int sys_arch = sizeof(void*);  
    int m_bytes = H_arch(&sys_arch) ; 
    if ( m_bytes != A_BASE_REF )  {
        printf("not allowed to run on %d \n" , (sys_arch * BASE_REF)) ; 
        return E_NO_ALLOW ; 
    }else {
        printf("systeme arch supported : %d \n" , A_BASE_REF) ; 

    }
    
    return A_ALLOW ; 
}
int H_arch (int *bytes) {    
    return *bytes * BASE_REF ; 
}
