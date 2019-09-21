#!/usr/bin/env sh

app="polybar"
bar="topbar"

time=2000
msg="Polybar launched!"

# Terminate already running bar instances
killall -q "$app"

# Wait until the processes have been shut down
while pgrep -u $UID -x "$app" >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
"$app" "$bar" >/dev/null 2>&1 &

# Notify
sleep 1
dunstify -t "$time" "$msg"
