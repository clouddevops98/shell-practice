#!/bin/bash

set -e

error() {
    echo "There is an error in $LINENO, Command is: $BASH_COMMAND"
}

trap error ERR

echo "Hello.."
echo "Before error"
ccaffjl;dnf
echo "After error"