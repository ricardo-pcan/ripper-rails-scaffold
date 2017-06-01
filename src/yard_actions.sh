#!/bin/sh
#mannage yard service for start, stop or restart

if [ $# != 2 ];then
   echo "\n Usage:\n\t$0 [start|stop|restart] [port]\n\n"
   exit
fi

PORT_SERVICE=$2
ACTION=$1
PID=`pidof ruby | xargs ps  | grep $PORT_SERVICE | sed 's/  */ /g' | cut -d ' ' -f1`

start() {
  yard server& 
  exit
}

stop_service() {
  if [ "$PID" ];then
    kill -KILL $PID
  echo 'yard is stopped'
  fi
}

case "$ACTION" in
  start)
    start
   ;;
  stop)
    stop_service
   ;;
  restart)
    stop_service
    start
   ;;
  *)
    echo "\n Usage: ./$0 [start|stop|restart] [port]\n"
   ;;
