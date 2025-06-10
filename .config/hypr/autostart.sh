#!/usr/bin/env bash 

hyprpaper &
gBar bar 0 &
mailsync
ntfy sub misc 'notify-send "MISC: $m"' &
ntfy sub sec 'notify-send "SEC: $m"' &
ntfy sub uptime 'notify-send "UPTIME: $m"' &
