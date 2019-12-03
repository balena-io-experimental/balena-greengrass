#!/bin/bash

/greengrass/ggc/core/greengrassd start
tail -f /greengrass/ggc/var/log/system/runtime.log &
while : ; do echo "${MESSAGE=Idling...}"; sleep ${INTERVAL=600}; done
