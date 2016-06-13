g++ -o recv  -I../out/include/ rtprecv.c -L../out/lib/  -lortp  -lmbedcrypto -lbctoolbox

g++ -o send  -I../out/include/ rtpsend.c -L../out/lib/  -lortp  -lmbedcrypto -lbctoolbox
