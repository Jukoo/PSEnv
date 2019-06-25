#!/usr/bin/node 
/*
 * author : jukoo <funscript@outlook.fr> 
 * 
 */ 

module["export"] = {
    dist : {
        os_platform : "GNU/Linux" ,  
        m_hardware  : "x86_64"  
    } , 
    
    pkg_track: [   
        "redis-server" ,"ranger" , 
        "i3" , "git"     , "vim" , 
        "wavemon"   "terminator" , 
        "rofi" ,  "lxappearance" , 
        "mysql-server" ,"neovim" , 
        "vim-fugitive" , "tshark", 
        "powerline"  
    ] , 

    ["ops"] : {
        pkg_prloader (...tracker , ...T_except)  {

            extrate_no_needed_pck: 
            for(const items_pkg in  tracker) {
                if(T_except.include(items_pkg)) 
                    delete tracker[tracker.indexOf(items_pkg)]
            }
            return tracker 
        }  


    }


      

}
