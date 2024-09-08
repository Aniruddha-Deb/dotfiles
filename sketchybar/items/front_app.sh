#!/bin/bash

sketchybar --add item front_app left \
           --set front_app \
                                 icon.font="sketchybar-app-font:Regular:14.0" \
                                 padding_left=0 \
                                 label.padding_right=0 \
                                 label.padding_left=0 \
                                 icon.padding_right=0 \
                                 icon.padding_left=12 \
                                 script="$PLUGIN_DIR/front_app.sh"            \
           --subscribe front_app front_app_switched
