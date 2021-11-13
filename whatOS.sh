#!/usr/bin/env bash
#			 ___  _
#			| . ><_> ||_
#			| . \| |<_-<
#			|___/|_|/__/
#				 	 ||
#
#---------------------------------------------------------------------------------
# Script     : whatOS.sh
# Description: Use ping command to get the OS name
# Version    : 0.1
# Author     : Bi$ https://github.com/BiS-9
# Date       : 2021-11-11
# License    : GNU/GPL v3.0
#---------------------------------------------------------------------------------
# Use        : ./whatOS.sh or ./PATH/whatOS.sh
#---------------------------------------------------------------------------------

### 30 ###
# AIX - UDP
# DEC Pathworks	V5 - TCP / UDP
# HP-UX	9.0x - TCP / UDP
# OSF/1	V3.2A - UDP
# Stratus TCP_OS 14.2 - TCP / UDP
# Ultrix V4.1/V4.2A - UDP
# VMS/Wollongong 1.1.1.1 - UDP

### 32 ###
# Windows 95 - TCP / UDP
# Windows 98 - ICMP
# Windows for Workgroups - TCP / UDP
# Windows NT 4.0 SP5
# Windows NT 3.51 - TCP / UDP

### 60 ###
# AIX - TCP
# Irix 5.3 - TCP / UDP
# Irix 6.x - TCP/ UDP
# MacOS/MacTCP 2.0.x - TCP / UDP
# OSF/1 V3.2A - TCP
# Ultrix V4.1/V4.2A - TCP
# VMS/TCPware - TCP
# SunOS	4.1.3/4.1.4 - TCP / UDP
# Stratus STCP - ICMP / TCP / UDP

### 64 ###
# Android 3.2.1 - TCP / ICMP
# Android 5.1.1 - TCP / ICMP
# Compa Tru64 v5.0 - ICMP
# Foundry - ICMP
# FreeBSD 2.1R - TCP / UDP
# FreeBSD 5 - ICMP
# HP-UX 10.01 - TCP / UDP
# HP-UX 11 - TCP
# juniper - ICMP
# Linux 2.0.x kernel - ICMP
# Linux Red Hat 9 - ICMP / TCP
# MacOS/MacTCP X 10.5.6 - ICMP / TCP / UDP
# Netgear FVG318 - ICMP / UDP
# OS/2 TCP/IP 3.0
# Solaris 2.8 - TCP
# Stratus TCP_OS 14.3 - TCP / UDP
# VMS/Multinet - TCP / UDP
# VMS/TCPware - UDP

### 128 ###
# VMS/Wollongong 1.1.1.1 - TCP
# VMS/UCX - TCP / UDP
# Windows 7 -ICMP / TCP / UDP
# Windows 10 - ICMP / TCP / UDP
# Windows 98,98 SE - ICMP
# Windows 98 - TCP
# Windows 2000 family - ICMP
# Windows 2000 pro - ICMP / TCP / UDP
# Windows ME - ICMP
# Windows NT 4.0 - TCP / UDP
# Windows NT 4.0 SP6+
# Windows NT 4 WRKS SP 3, SP 6a - ICMP
# Windows NT 4 Server SP4 - ICMP
# Windows Server 2003
# Windows Server 2008 - ICMP / TCP / UDP
# Windows Vista - ICMP /TCP / UDP
# Windows XP - ICMP / TCP / UDP

### 200 ###
# MPE/IX (HP) - ICMP

### 254 ###
# Cisco - ICMP

## 255 ###
# AIX 3.2,4.1 - ICMP
# BSDI BSD/OS 3.1,4.0 - ICMP
# FreeBSD 3.4,4.0 - ICMP
# HP-UX	10.2 - ICMP
# HP-UX	11 - ICMP
# Irix 6.5.3,6.5.8 - ICMP
# Linux	2.2.14 kernel - ICMP
# Linux	2.4 kernel - ICMP
# NetBSD - ICMP
# OpenBSD 2.6,2.7 - ICMP
# OpenVMS 07.01.2002 - ICMP
# Solaris 2.5.1,2.6,2.7,2.8 - ICMP
# Stratus TCP_OS - ICMP
# SunOS	5.7 - ICMP / TCP
# Ultrix V4.2,4.5 - ICMP
#---------------------------------------------------------------------------------

# Bold colours
bB=$'\e[1;30'   # Black
RB=$'\e[1;31m'  # Red
GB=$'\e[1;32m'  # Green
YB=$'\e[1;33m'  # Yellow
BB=$'\e[1;34m'  # Blue
PB=$'\e[1;35m'  # Purple
CB=$'\e[1;36m'  # Cyan
WB=$'\e[1;37m'  # White
NC=$'\e[0m'     # No colour
#---------------------------------------------------------------------------------

# Variable
ip=$1

# whatOS
whatOS(){

    ttl=$2

	if [ $ttl -ge 1 -a $ttl -le 30 ]; then
		echo -e "\n"$GB"[*]"$NC" "$CB"IP->"$NC" "$YB"$ip"$NC" "$CB"TTL->"$NC" "$YB"$ttl Stratus"$NC""
	elif [ $ttl -ge 31 -a $ttl -le 32 ]; then
		echo -e "\n"$GB"[*]"$NC" "$CB"IP->"$NC" "$YB"$ip"$NC" "$CB"TTL->"$NC" "$YB"$ttl Windows"$NC""
	elif [ $ttl -ge 33 -a $ttl -le 60 ]; then
		echo -e "\n"$GB"[*]"$NC" "$CB"IP->"$NC" "$YB"$ip"$NC" "$CB"TTL->"$NC" "$YB"$ttl MacOS"$NC""
	elif [ $ttl -ge 61 -a $ttl -le 64 ]; then
		echo -e "\n"$GB"[*]"$NC" "$CB"IP->"$NC" "$YB"$ip"$NC" "$CB"TTL->"$NC" "$YB"$ttl Linux"$NC""
	elif [ $ttl -ge 65 -a $ttl -le 128 ]; then
		echo -e "\n"$GB"[*]"$NC" "$CB"IP->"$NC" "$YB"$ip"$NC" "$CB"TTL->"$NC" "$YB"$ttl Windows"$NC""
	elif [ $ttl -ge 129 -a $ttl -le 200 ]; then
		echo -e "\n"$GB"[*]"$NC" "$CB"IP->"$NC" "$YB"$ip"$NC" "$CB"TTL->"$NC" "$YB"$ttl MPE/IX (HP)"$NC""
	elif [ $ttl -ge 201 -a $ttl -le 254 ]; then
		echo -e "\n"$GB"[*]"$NC" "$CB"IP->"$NC" "$YB"$ip"$NC" "$CB"TTL->"$NC" "$YB"$ttl Cisco"$NC""
	else
		echo -e "\n"$GB"[*]"$NC" "$CB"IP->"$NC" "$YB"$ip"$NC" "$CB"TTL->"$NC" "$YB"$ttl Solaris"$NC""
	fi

    echo -e "\n"$GB"$(request | grep packets)"$NC""

	exit 0
}

# Ping
function request(){
	ping -c 1 $ip
}

# Get TTL and verify params
if [ $# -eq 1 ]; then

	ttl=$(request | grep -oP 'ttl=\d{1,3}' | cut -d '=' -f 2)


	if [ $? -eq 0 -a $ttl -ge 1 -a $ttl -le 255 ] 2>/dev/null; then
		whatOS $1 $ttl
	fi

	echo -e "\n"$RB"[!]"$NC" "$YB"Something was wrong, check the command you typed!"$NC""
	exit 1

else
	echo -e "\n"$RB"[!]"$NC" "$CB"Use:"$NC" "$YB"./whatOS + ipAddress"$NC" "$CB"or"$NC" "$YB"./PATH/whatOS.sh + ipAddress"
fi
