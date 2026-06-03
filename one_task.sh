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



function  SetupFile(){

  if [[ "$1" == "setup" ]]; then
    echo -e "\n"
    echo "================================================" 
    echo -e "\n"
    echo "set up file ${2}"
    touch "${2}.md"
    echo "================================================" 
fi
}

function ListFiles(){
    if [[ "$1" == "list" ]]; then
         echo -e "\n"
        echo "================================================" 
        echo -e "\n"
        if ls *.list.md 2>/dev/null; then
            echo -e "All todo-lists:"
            ls *.list.md
        else
            echo "You have no todo-lists."
        fi
        echo -e "\n"
        echo "================================================" 
    fi
}


function New(){
  if [[ "$1" == "new" ]]; then
        echo -e "\n"
        echo "================================================" 
        echo -e "\n"
        echo  "Create ${2}.md"
        touch "$2"
        echo "================================================" 
    fi

}

# getting commands together
case "$COMMAND" in
    setup)   SetupFile "$COMMAND" "$ACTION" ;;
    list)    ListFiles "$COMMAND" ;;
    top) echo "Top item" ;;
    add)  echo "Add item" ;;
    delete)  echo "Delete item" ;;
    new)   echo "New:list" ;;
    help) echo "help" ;;
    *)    
    echo -e "\n"
    echo " ===============================================" 
    echo -e "\n"
    echo -e "One task must take one of these commands:"
    echo "setup"
    echo "list"
    echo "top"
    echo "New"
    echo -e "\n"
    echo " ===============================================" 
     echo -e "\n"

      ;;
esac





