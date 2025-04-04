#!/bin/bash
echo "download world"
./download_world.sh
echo "running server"
./start.bat || true

echo "sync server"
./update.bat


