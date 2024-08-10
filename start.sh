#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "$SCRIPT_DIR"

if ! command -v python2.7 &> /dev/null
then
    echo "Python 2.7 could not be found. Please install it."
    exit 1
fi

if [ ! -f "automessage.py" ]; then
    echo "automessage.py not found in the current directory."
    exit 1
fi

if pgrep -f "python2.7 automessage.py" > /dev/null
then
    echo "Auto Message Plugin is already running."
else
    nohup python2.7 automessage.py > automessage.log 2>&1 &
    PID=$!
    echo "Auto Message Plugin started. PID: $PID"
    
    sleep 2
    if ps -p $PID > /dev/null
    then
        echo "Plugin successfully started and is running."
    else
        echo "Plugin failed to start. Check automessage.log for details."
        tail -n 20 automessage.log
    fi
fi
