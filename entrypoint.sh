#!/bin/bash
sleep 2

cd /home/container

# Replace Startup Variables
MODIFIED_INSTALL=`eval echo $(echo ${INSTALL} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`

# Run the Server
${MODIFIED_INSTALL}
${MODIFIED_STARTUP}
