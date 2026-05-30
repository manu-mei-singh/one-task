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
# Example: ./one_tash.sh new homework.md 

COMMAND="${1}"
ACTION="${2}"


# if [[ -z "$ACTION"  ]]; then
#  echo "Usage: $0 must not be an empty string"
#  exit 1
# fi  

# getting commands together
case "$COMMAND" in
    setup)   echo "Setup" ;;
    list)   echo "List items" ;;
    top) echo "Top item" ;;
    add)  echo "Add item" ;;
    delete)  echo "Delete item" ;;
    new)   echo "New:list" ;;
    *)     
    echo "Usage: $0 must contain one of these commands:"
    echo "setup"
    echo "list"
    echo "top"
    echo "New"
      ;;
esac




