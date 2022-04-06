#!/bin/bash

echo "This is a test script"

P1=$1

echo "First parameter is ${P1}"

if [ -f /etc/os-release ]; then
    source /etc/os-release
else
    echo "Not Ubuntu - bailing"
    exit 1
fi

OS_ARCH=(uname -m)
echo "Detecting ${PRETTY_NAME} on ${OS_ARCH}"