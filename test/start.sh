export LD_LIBRARY_PATH=../out/lib/
#rm -f out.mp3  
echo "receive file"
./recv "./out.mp3" 8888&
sleep 3


echo "send file"
./send "in.mp3" 192.168.159.140 8888

