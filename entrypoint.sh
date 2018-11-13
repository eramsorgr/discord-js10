#!/bin/bash
sleep 2

cd /home/container


# Run the Server
${INSTALL}
node ${STARTUP}
