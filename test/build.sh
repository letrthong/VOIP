g++ -o recv  -I../out/include/ rtprecv.c -L../out/lib/  -lortp  -lmbedcrypto -lbctoolbox

g++ -o send  -I../out/include/ rtpsend.c -L../out/lib/  -lortp  -lmbedcrypto -lbctoolbox


g++ -o tevrtpsend  -I../out/include/ tevrtpsend.c -L../out/lib/  -lortp  -lmbedcrypto -lbctoolbox

g++ -o tevrtprecv  -I../out/include/ tevrtprecv.c -L../out/lib/  -lortp  -lmbedcrypto -lbctoolbox