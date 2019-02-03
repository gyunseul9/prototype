#!/bin/bash
TIME=`date +"%Y-%m-%d_%H:%M:%S"`

if [ $# -lt 1 ]; then
	echo -e " "
	echo -e " usage: ./start_web.sh <value>"
	echo -e " e.g: ./start_web.sh start | stop"
	exit 1;
else
	if [ ${1} = "start" ]; then
		`sudo service nginx start;`
		`sudo service uwsgi start;`
		`sudo service supervisor start;`
	elif [ ${1} = "stop" ]; then
		`sudo service nginx stop;`
		`sudo service uwsgi stop;`
		`sudo service supervisor stop;`
	else
		exit 1;
	fi
fi

