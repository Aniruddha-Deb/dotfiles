#!/bin/bash

TEMP=$(smctemp -c)
CELSIUS=$'\xc2\xb0'

sketchybar --set "$NAME" label="$TEMP${CELSIUS}C"
