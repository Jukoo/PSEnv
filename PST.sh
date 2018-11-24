#!/bin/bash 

##############################################################
# script name : PST 
# author      : jukoo 
# Description : rapid establishment of personal environment
# Status      : On build 
##############################################################
set -o errexit 

UID_ROOT=0 
ERR_no_ROOT=64 
DIST_REQ=("Ubuntu" "Debian")  #only those was supported 
ERR_DIST_NOTFOUND=12 
HARDWARE_PLTF="x86_64" 
ERR_NOCOMP=13
PCKFILE=toolRequirements


check_privilege () {

    [ $UID_ROOT -eq  $UID ] && {
    
        return $UID 
    } || {
            echo -e "you shoul be root to execute this script " 
            exit ${ERR_no_ROOT} 
    }


} 

check_privilege 


system_analysis () {
    
  local dist=$(lsb_release -is)  
  local HPLT=$(uname --hardware-platform) 
  if [ $dist ==  ${DIST_REQ[0]}  -o  $dist == ${DIST_REQ[1]} ] ; then 
        
        if [ $HARDWARE_PLTF == $HPLT ] ; then 
            echo " [ system  OK ] "
        else 
            echo $ERR_NOCOMP 
        fi 
  else
    exit $ERR_DIST_NOTFOUND

  fi 
}

upd_grd () {
    
    sudo apt update ; sudo apt upgrade --assume-yes 

}


TR_install () {
    local COLLECTION=() 
    local extrate=
    if [ -e $PCKFILE ] ; then 
        
        for  pck  in  $(cut -d , -f1  $PCKFILE); do 
            COLLECTION+=("$pck")
        done 

    fi 

    echo ${COLLECTION[@]}
}




[ $?  -eq 0 ] &&   { 
    
     system_analysis 
     #upd_grd
     TR_install 
     
} 
