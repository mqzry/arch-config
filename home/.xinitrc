(sleep 10s && xset b off) &
(sleep 10s && xset r rate 250 45) &
setxkbmap -layout "us,ru" -option "grp:toggle,ctrl:nocaps,terminate:ctrl_alt_bksp"
xcape
xcape -e 'Shift_L=parenleft'
xcape -e 'Shift_R=parenright'
xcape -e 'Control_R=Shift_L|minus'
xcape -e 'Hyper_L=F1'
xcape -e 'Alt_L=F2'
xset +fp /usr/share/fonts/local
xsetroot -cursor_name left_ptr &
~/.mouse
numlockx &
xrdb -merge ~/.Xresources
export JAVA_HOME=/usr/lib/jvm/java-default-runtime
xxkb &
urxvtd -q -o -f
chromium &
export PATH=~/bin:$PATH

exec dbus-launch xmonad
