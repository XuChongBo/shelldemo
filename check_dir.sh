#!/bin/bash

if [ ! -d pydir ] ; then
    if ! which wget >/dev/null 2>/dev/null; then
        echo "Package wget not installed"
        exit 1
    fi
    if ! which p7zip >/dev/null 2>/dev/null; then
        echo "Package p7zip not installed"
        exit 1
    fi

    if [ ! -f python_minimal.7z ] ; then
        wget -O python_minimal.7z http://10.10.53.216/downloads/python_xx_xx.7z || exit 1
    fi
    p7zip -d python_minimal.7z || exit 1
    mv python_xx_xx pydir || exit 1
fi
