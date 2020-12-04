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
mv newosv2 NewOS-V2
touch ~/NewOS-V2/name.txt
touch ~/NewOS-V2/startup
echo -e "${GREENFG}NewOS V2 Installed Successfully!"
echo "Do you want to run it now?"
read -n1 -r run
if [ "$run" = 'y' ]; then
echo ""
echo -e "${BBLUEFG}Loading..."
sleep 5
echo ""
bash ~/NewOS-V2/run
exit 0
else
exit 0
fi
else
echo ""
echo -e "${ERRORFG} Cancelled"
exit 0
fi