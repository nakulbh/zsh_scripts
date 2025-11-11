#!/bin/zsh

# Check if Claude is running
if pgrep -x "Claude" >/dev/null; then
    echo "Claude is running."
    read -q "REPLY?Do you want to restart it? (y/n): "
    echo ""
    if [[ $REPLY == "y" ]]; then
        echo "Restarting Claude..."
        pkill -x "Claude"
        sleep 2
        open -a "Claude"
        echo "Claude restarted successfully."
    else
        echo "Cancelled."
    fi
else
    echo "Starting Claude..."
    open -a "Claude"
fi

