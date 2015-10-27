#!/bin/bash
# Change your MAC address, because some airports are dicks. AENA, I'm looking at you.

sudo ifconfig wlan0 down; sudo ifconfig wlan0 hw ether 38:59:f9:12:41:ca; sudo ifconfig wlan0 up
