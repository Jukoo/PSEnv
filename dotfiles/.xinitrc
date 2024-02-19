#!/bin/sh

# Source global X session scripts.
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' -e 'keycode 0x86 = Multi_key'


#feh --no-fehbg --bg-fill "/usr/share/backgrounds/Chicago-00-fastnlite.png"
#feh --no-fehbg --bg-fill "/home/umar/wallpapers/astro.jpg" 


export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'

# Uncheck "Allow Overriding System XKB Settings" on Fcitx's XCB add-on settings
# to prevent it from undoing the `xmodmap` above.
fcitx5 &

battery() {

  battery=`acpi`  
  if [ -z  ${battery} ];then 

      echo -n 'No BAT'
  fi
}

while true; do
  bat=`acpi -b | cut  -d , -f2`
  xprop -root -set WM_NAME "::$(date '+%A,%B %-d,%-I:%M %p')${bat}"
  sleep 15
done &



exec dwm
