# find path
echo(PATH)

#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

export DISPLAY=:0.0

echo 'start'
network_time=10

DATE=`date +%Y-%m-%d:%H:%M:%S`

file_type='screenshot'

filename=$file_type$DATE

# open webpage
firefox 'https://www.google.co.nz/maps/@-36.8730671,174.7501478,15z/data=!5m1!1e1' &
declare -i PID=$!

sleep $network_time

# get screenshot using scrot
scrot $filename.png 

sleep $network_time

# close browser
kill ${PID}

