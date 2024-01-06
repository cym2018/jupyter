for pid in `ps -ef|grep jupyter|grep -v grep|grep -v start|awk '{print $2}'`;do kill -9 $pid;done
chmod 777 -R *
nohup jupyter lab 1>jupyter.out 2>jupyter.err & 
