# Drone Hacking Scripts
A Parrot Bebop drone was handy so we decided to teach our Trainees some WiFi hacking.
You'll need to install this on Kali Linux. These scripts were tested on a Raspberry Pi 4 B+ 4 GB.
The WiFi adapter was an ALFA AWUS036ACH but we built an extend3d pair of antennas to mount on a Yagi antenna for more directional control.
Written by Nathan Jones nathan.jones@arcadeusops.com

# Scripts
connectOpenNetwork.sh is for a WiFi connection that is not password protected.
connectSecureNetwork.sh is for a WiFi connection that is password protected. We used the rockyou.txt password file.

## Ethical Notice
The original code is written by ArcadeusOPS, who are not responsible for misuse of this data gathering tool. Do not use these scripts to navigate websites/devices that take part in any activity that is identified as illegal under the laws and regulations of your government. STAY LEGAL !!

## License
MIT License
Copyright (c) ArcadeusOPS

# To Do
Use pythonscan.sh to agressiveley scan target drone
hping3 Flood attack script over WiFi on http connection?
The .txt files are for future scripts to detetc, identify and gain a shell on target drone.
