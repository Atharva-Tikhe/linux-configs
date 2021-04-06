#!/usr/bin/bash


killall -q polybar


echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar example  2>&1 | tee -a /tmp/polybar1.log & disown
#polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown


echo "Bars launched...."


