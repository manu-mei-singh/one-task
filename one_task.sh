#!/bin/bash

# arguments
#   Setup 
#   List items
#   Top item
#   Done item
#   Add item
#   Delete item
#   NewList

# Usage: ./one_task <command> <action>
# Month format: 01-12
# Example: ./one_tash.sh NewList homework.md 

COMMAND="${1}"
ACTION="${2}"


if [[ -z "$ACTION"  ]]; then
 echo "Usage: $0 must not be an empty string"
 exit 1
fi  

# getting commands together
case "$COMMAND" in
    setup)   echo "one" ;;
    list)   echo "two" ;;
    top) echo "three" ;;
    add)  echo "four" ;;
    delete)  echo "five" ;;
    new)   echo "new" ;;
    *)     
    echo "Usage: $0 must contain one of the commands:"
    echo "setup"
    echo "List"
    echo "Top"
    echo "New"
      ;;
esac




