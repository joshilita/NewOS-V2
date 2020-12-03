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
echo ""
echo -e "${BBLUEFG}Installing NewOS V2. Please Wait."
sleep 2
cd ../
git clone https://github.com/joshilita/newosv2
mv NewOS-V2 newosinstaller
echo -e "${GREENFG}NewOS V2 Installed Successfully!"
else
echo ""
echo -e "${ERRORFG} Cancelled"
exit 0
fi