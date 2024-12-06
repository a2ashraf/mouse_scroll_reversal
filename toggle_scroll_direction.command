#!/bin/bash

# Get the current scroll direction
current_scroll=$(defaults read -g com.apple.swipescrolldirection)

# Toggle the scroll direction
if [ "$current_scroll" -eq 1 ]; then
    echo "Switching to Standard Scroll..."
    defaults write -g com.apple.swipescrolldirection -bool false
    osascript -e 'display notification "Scroll Direction: Standard" with title "Scroll Direction Toggled"'
else
    echo "Switching to Natural Scroll..."
    defaults write -g com.apple.swipescrolldirection -bool true
    osascript -e 'display notification "Scroll Direction: Natural" with title "Scroll Direction Toggled"'
fi

# Apply the changes
killall Finder