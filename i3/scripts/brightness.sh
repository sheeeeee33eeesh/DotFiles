#!/usr/bin/env bash
while true; do
	light > ~/.config/brightness
   /usr/bin/weather 23464 | grep Temperature | awk '{print $2 0 0}' | sed 's/\.//g' > ~/.config/weather && sleep 
	sleep 1
done
