#!/bin/sh

source "$CONFIG_DIR/colors.sh" 

if [ $SELECTED = true ]; then
  sketchybar --set $NAME label.color=$ACCENT_COLOR \
                         icon.color=$ACCENT_COLOR
else
  sketchybar --set $NAME label.color=$WHITE \
                         icon.color=$WHITE
fi
