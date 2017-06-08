#!/bin/bash
services=$(networksetup -listnetworkserviceorder | grep 'Hardware Port')

while read line; do
    sname=$(echo $line | awk -F  "(, )|(: )|[)]" '{print $2}')
    sdev=$(echo $line | awk -F  "(, )|(: )|[)]" '{print $4}')

    if [ -n "$sdev" ]; then
        ifconfig $sdev 2>/dev/null | grep 'status: active' > /dev/null 2>&1
        rc="$?"
        if [ "$rc" -eq 0 ]; then
            currentservice="$sname"
        fi
    fi
done <<< "$(echo "$services")"

if [ -n "$currentservice" ]; then
	case $currentservice in
		"Wi-Fi" )
			out=""
			;;
		"iPhone USB" )
			out=""
			;;
		"Thunderbolt Bridge" )
			out=""
			;;
	esac
	echo $out
else
    >&2 echo ""
    exit 1
fi
