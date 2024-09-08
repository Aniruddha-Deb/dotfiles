#!/bin/bash

sketchybar --add item calendar right \
           --set calendar icon=􀉉 \
                          update_freq=1 \
                          script="$PLUGIN_DIR/calendar.sh" \
                          padding_right=6 \                                                         background.color=0xff9cabca \
                          label.width=144 \
                          label.color=$DARK_BG \
                          icon.color=$DARK_BG \
