#!/bin/bash
echo "download world"
./download_world.sh
echo "running server"
if [ "$1" == "window" ]; then
    copy server_win.properties server.properties
    ./start_win.bat
else
    cp server_linux.properties server.properties
    ./start_linux.bat
fi

echo "sync server"
./update.bat


