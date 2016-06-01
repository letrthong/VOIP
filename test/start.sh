export LD_LIBRARY_PATH=../out/lib/
#rm -f out.mp3  
echo "receive file"
./recv out.mp3 8888&
sleep 1


echo "send file"
./send send.wav 127.0.0.1 8888

