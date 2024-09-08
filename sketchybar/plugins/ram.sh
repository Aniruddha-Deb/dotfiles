#!/bin/bash

RAM=$(memory_pressure | grep "System-wide memory free percentage:" | awk '{ printf("%d\n", 100-$5"%") }')

sketchybar  --set "$NAME" label="$RAM%"
