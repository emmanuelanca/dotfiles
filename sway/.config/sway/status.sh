#!/bin/sh

# 2. Battery Logic
bat_cap=$(cat /sys/class/power_supply/BAT0/capacity)
bat_status=$(cat /sys/class/power_supply/BAT0/status)

if [ "$bat_status" = "Charging" ]; then
    bat_str="⚡ ${bat_cap}%"
else
    bat_str="🔋 ${bat_cap}%"
fi

# 3. Date and Time
date_time=$(date "+%Y-%m-%d %H:%M")

# Print the final combined string for swaybar
echo "$bat_str | $date_time"
