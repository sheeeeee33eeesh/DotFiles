#!/usr/bin/env bash
for i in {0..9}
do
   pactl set-sink-volume $i -5% 2>/dev/null &
done
