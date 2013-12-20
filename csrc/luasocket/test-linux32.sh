lua=../../linux/bin/luajit
$lua test/testsrvr.lua &
sleep 0.5
$lua test/testclnt.lua
sleep 0.5
killall luajit-2.0
wait
