#!/bin/bash
to=$1
msg=$2
tgpath=/home/pi/tg
cd ${tgpath}
(sleep 3;echo "send_photo $to $msg"; echo "safe_quit") | ${tgpath}/bin/telegram-cli -k tg-server.pub -W
