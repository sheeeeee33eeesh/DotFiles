#!/usr/bin/env bash

if [ "$1" == "up5" ]; then
   for i in {0..5}; do
      pactl set-sink-volume $i +5% &
   done
elif [ "$1" == "down5" ]; then
   for i in {0..5}; do
      pactl set-sink-volume $i -5% &
   done
elif [ "$1" == "up1" ]; then
   for i in {0..5}; do
      pactl set-sink-volume $i +1% &
   done
elif [ "$1" == "down1" ]; then
   for i in {0..5}; do
      pactl set-sink-volume $i -1% &
   done
else
   exit
fi