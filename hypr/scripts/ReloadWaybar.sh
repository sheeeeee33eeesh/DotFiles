#!/usr/bin/env bash
pidof waybar | tr " " \\n | while read i ; do
   kill $i
done

waybar -c ~/.config/waybar/bar1.jsonc &
waybar -c ~/.config/waybar/bar2.jsonc &
