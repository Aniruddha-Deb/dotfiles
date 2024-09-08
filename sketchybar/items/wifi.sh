#!/bin/bash

sketchybar --add item net right                  \
           --set net script="$PLUGIN_DIR/wifi.sh" \
                     updates=on                  \
                     icon.padding_right=0        \
           --subscribe net wifi_change
