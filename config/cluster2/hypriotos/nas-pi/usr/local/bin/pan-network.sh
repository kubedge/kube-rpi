#!/bin/sh -e
# BlooeTooth PAN Setup
/sbin/modprobe bnep
/bin/hciconfig hci0 lm master,accept
/sbin/ip link set pan0 up
/bin/hciconfig hci0 sspmode 0
# end BlueTooth
