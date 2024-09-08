
 !/bin/bash

sketchybar --add item battery right \
           --set battery update_freq=120 \
                         script="$PLUGIN_DIR/battery.sh" \
                         background.drawing=false \
                         icon.padding_left=0 \
           --subscribe battery system_woke power_source_change
