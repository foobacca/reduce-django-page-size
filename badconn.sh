#!/bin/bash
#
# script to set/unset a bad internet connection.
#
# See also:
# http://www.linuxfoundation.org/collaborate/workgroups/networking/netem
# http://stackoverflow.com/a/1094797/3189
# http://stackoverflow.com/a/15824081/3189


function print_usage {
    echo "sudo ./badconn.sh               # apply the rules"
    echo "sudo ./badconn.sh reset         # delete the rules"
    echo "sudo ./badconn.sh -h | --help   # print this message and exit"
}

# env variables to make it easy to change
IFACE=lo  # loopback/localhost
#IFACE=wlan0
#IFACE=eth0

LATENCY=250ms
PKT_LOSS=0.2%
RATE=256kbit

# check if we are root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root/with sudo" 1>&2
   exit 1
fi

if [[ $# -gt 1 ]]; then
    echo "Too many arguments"
    echo
    print_usage
    exit 1
elif [[ $# -eq 1 ]]; then
    # if argument is "reset" then delete the rules
    if [[ $1 == '-h' || $1 == '--help' ]]; then
        print_usage
        exit 0
    elif [[ $1 == 'reset' ]]; then
        echo "reseting all rules"
        tc qdisc del dev $INTERNAL root >/dev/null 2>&1
        exit 0
    else
        echo "Unrecognised argument: $1"
        echo
        print_usage
        exit 1
    fi
fi

echo "Setting interface $IFACE to have a latency of $LATENCY, a max speed of"
echo "$RATE and packet loss of $PKT_LOSS"
echo
echo "Use '$0 reset' to put the connection back to normal."

# rate limit and latency
tc qdisc add dev $IFACE root handle 1:0 netem delay $LATENCY
tc qdisc add dev $IFACE parent 1:1 handle 10: tbf rate $RATE buffer 1600 limit 3000

# packet loss
tc qdisc change dev $IFACE root netem loss $PKT_LOSS
