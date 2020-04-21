#!/bin/sh

#rofi options
opt='-width 16 
	 -lines 5 
	 -dmenu 
	 -p
	'

#get cfg
p=$(printf "%s\n" "1 Cancel" "2 Shutdown" "3 Restart" "4 Suspend " | rofi "$opt" "Select Command > " | awk '{print $1}')


case $p in
	"2") systemctl poweroff ;;
	"3") systemctl reboot ;;
	"4") systemctl suspend ;;
	*) exit 1 ;;
esac
