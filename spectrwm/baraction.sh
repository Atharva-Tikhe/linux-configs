#!/bin/bash
#baraction.sh for spectrwm status bar

## Date

dte(){
	dte="$(date +"%A, %B %d %l:%M%p")"
	echo -e "$dte"
}

hdd(){
	hdd="df -h | awk 'NR==3{print $3 $4}'"
	echo -e "HDD: $hdd"
}

#vol(){
#	vol=`amixer get Mater | awk -F '[][]' 'END{print $4":"$2 }'`
#	echo -e "VOL: $vol"
#}

SLEEP_SEC=5

while :; do
	echo "$(date) $(hdd) $(vol)"
	sleep $SLEEP_SEC
done


