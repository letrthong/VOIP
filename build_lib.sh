#https://cmake.org/download/
#curl -sSL https://cmake.org/files/v3.5/cmake-3.5.2-Linux-x86_64.tar.gz | sudo tar -xzC  ./

#http://blog.cleverelephant.ca/2014/12/building-cunit-from-source.html

PREFIX=/home/test/VOIP
ROOT=/home/test/VOIP
cd ./CUnit-2.1-2
libtoolize -f -c -i 
aclocal 
autoconf 
automake --gnu --add-missing 

./configure  --prefix=${PREFIX} \
	     --libdir=${PREFIX}/opt/lib/ \
	     --includedir=${PREFIX}/opt/include/ 
make
make install
make clean

cd ${ROOT}
cd ./mbedtls
cmake . -DCMAKE_INSTALL_PREFIX=${PREFIX}/out \
	-DCMAKE_PREFIX_PATH=${PREFIX}/out
make
make install
make clean
cd ${ROOT}
cd ./bctoolbox
cmake . -DCMAKE_INSTALL_PREFIX=${PREFIX}/out \
	-DCMAKE_PREFIX_PATH=${PREFIX}/out \
	 -DENABLE_POLARSSL=OFF -DENABLE_MBEDTLS=ON  
make
make install
make clean

cd ${ROOT}
cd ortp
./autogen.sh

cd ${ROOT}
cd ./ortp
./autogen.sh

export BCTOOLBOX_LIBS=-L ${PREFIX}/usr/lib -lbctoolbox
export BCTOOLBOX_CFLAGS=-I${PREFIX}/usr/include/
./configure  --prefix=${PREFIX} \
	     --libdir=${PREFIX}/out/lib/ \
	     --includedir=${PREFIX}/out/include/ 

make clean
make
make install
make



