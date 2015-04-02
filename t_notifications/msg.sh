#!/bin/bash
to=$1
msg=$2
tgpath=/home/pi/tg
cd ${tgpath}
(sleep 3;echo "msg $to $msg"; echo "safe_quit") | ${tgpath}/bin/telegram-cli -k ${tgpath}/tg-server.pub -W
