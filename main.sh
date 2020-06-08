#!/bin/bash

figlet eazy - nmap
echo "By ashik_dev"
echo "1)Ping scans the network, listing machines that respond to ping.\n
2)Full TCP port scan using with service version detection - usually my first scan, I find T4 more accurate than T5 and still "pretty quick".\n
3)Prints verbose output, runs stealth syn scan, T4 timing, OS and version detection + traceroute and scripts against target services.\n
4)Prints verbose output, runs stealth syn scan, T5 timing, OS and version detection + traceroute and scripts against target services.\n
5)Prints verbose output, runs stealth syn scan, T5 timing, OS and version detection.\n
"
echo -e "Which scan?:"
read num
if [ $num -eq 1 ]
then
			echo "Starting n-map..."
			sleep 3
			nmap -sP 10.0.0.0/24
elif [ $num -eq 2 ]
then
			echo "Starting n-map..."
			sleep 3
			echo "Enter ip to scan:"
			read ip
			nmap -p 1=65535 -sV -sV -T4 $ip
elif [ $num -eq 3 ]
then
			echo "Starting n-map..."
			sleep 3
			echo "Enter ip to scan:"
			read ip
			nmap -v -sS -A -T4 $ip
elif [ $num -eq 4 ]
then
			echo "Starting n-map..."
			sleep 3
			echo "Enter ip to scan:"
			read ip
			nmap -v -sS -A -T5 $ip
elif [ $num -eq 5 ]
then
			echo "Starting n-map..."
			sleep 3
			echo "Enter ip to scan:"
			read ip
			nmap -v -sV -sS -T5 $ip
else
			echo "Enter correct input!!!"
fi
	 
