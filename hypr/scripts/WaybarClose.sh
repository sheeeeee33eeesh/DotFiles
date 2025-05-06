#!/usr/bin/env bash

pidof waybar | tr " " \\n | while read i ; do
   kill $i
done

