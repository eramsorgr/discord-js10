#!/bin/bash
sleep 2

cd /home/container
MODIFIED_STARTUP=`eval echo $(echo npm ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
${MODIFIED_STARTUP}
