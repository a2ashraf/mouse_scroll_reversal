#!/bin/bash

# Get the current scroll direction
current_scroll=$(defaults read -g com.apple.swipescrolldirection)

# Toggle the scroll direction
if [ "$current_scroll" -eq 1 ]; then
    echo "Switching to Standard Scroll..."
    defaults write -g com.apple.swipescrolldirection -bool false
else
    echo "Switching to Natural Scroll..."
    defaults write -g com.apple.swipescrolldirection -bool true
fi

# Apply the changes (logout/login might also be needed in some cases)
killall Finder
