#!/usr/bin/env bash 

picom &
feh /home/youshitsune/.config/wallpapers/02.jpg --bg-scale
slstatus &
xinput set-prop "MSFT0001:01 04F3:31BE Touchpad" "libinput Tapping Enabled" 1
ibus-daemon -drxR
xset -dpms
xset s off
nmcli d down ipv6leakintrf0
mailsync
ntfysh sub misc 'notify-send "MISC: $m"' &
ntfysh sub sec 'notify-send "SEC: $m"' &
ntfysh sub uptime 'notify-send "UPTIME: $m"' &
ntbat &
