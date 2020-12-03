#!/usr/bin/env bash
GREENFG="\e[38;5;82m"
REDWEAKFG="\e[38;5;132m"
BBLUEFG="\e[1;38;5;75m"
GBLUEFG="\e[1;38;5;73m"
FOLDERNAMEFG="\e[1;38;5;45m"
ERRORFG="\e[1;38;5;197m"
RESET="\e[0m"
BOLD="\e[1m"

#start
echo -e "${GREENFG} Welcome to the new and improved version of NewOS! This script will install the OS for you. Enjoy!"
echo -e "Do you want to continue? (y/*)"
read -n1 -r key
if [ "$key" = 'y' ]; then
echo -e "${BBLUEFG}Installing NewOS V2. Please Wait."
else
echo -e "${ERRORFG} Cancelled"
exit 0
fi